// SPDX-License-Identifier: (LGPL-2.1 OR BSD-2-Clause)
/* Copyright (c) 2020 Facebook */
#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <sys/resource.h>
#include <bpf/libbpf.h>
#include <fcntl.h>
#include "stack_count.skel.h"
#include <sys/syscall.h>
#include <sys/sysinfo.h>
#include <linux/perf_event.h>
#include "trace_helpers.h"

#define PRINT_RAW_ADDR 0

#define TASK_COMM_LEN 256

#define MAX_STACK_DEPTH         128

struct stack_count_bpf *skel;

// typedef __u64 stack_trace_t[MAX_STACK_DEPTH];

// struct stack_count_event {
// 	__u32 pid;
// 	__u32 cpu_id;
// 	char comm[TASK_COMM_LEN];
// 	__s32 kstack_sz;
// 	__s32 ustack_sz;
// 	stack_trace_t kstack;
// 	stack_trace_t ustack;
// };
struct key_t {
	char comm[TASK_COMM_LEN];
	unsigned int stackid;
};

static int libbpf_print_fn(enum libbpf_print_level level, const char *format, va_list args)
{
	return vfprintf(stderr, format, args);
}

static volatile sig_atomic_t stop;

static void sig_int(int signo)
{
	stop = 1;
}

static void print_ksym(__u64 addr)
{
	struct ksym *sym;

	if (!addr)
		return;
	sym = ksym_search(addr);
	if (!sym) {
		printf("ksym not found. Is kallsyms loaded?\n");
		return;
	}

	if (PRINT_RAW_ADDR)
		printf("%s/%llx;", sym->name, addr);
	else
		printf("%s;", sym->name);
}

static long perf_event_open(struct perf_event_attr *hw_event, pid_t pid,
			    int cpu, int group_fd, unsigned long flags)
{
	int ret;

	ret = syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
	return ret;
}

// static void show_stack_trace(__u64 *stack, int stack_sz, pid_t pid)
// {
// 	for (int i = 0; i < MAX_STACK_DEPTH;i++) {
// 		if (stack[i] == 0) {
// 			break;
// 		}
// 		// printf("%016lx\n", stack[i]);
// 		print_ksym(stack[i]);
// 	}
// }

static void print_stack( struct key_t *key, __u64 count)
{
	__u64 ip[PERF_MAX_STACK_DEPTH] = {};
	static bool warned;
	int i;

	// printf("comm:%s  ip:%lx, count: %d\n", key->comm, key->stackid, count);

	printf("%s;", key->comm);
	if (bpf_map_lookup_elem(bpf_map__fd(skel->maps.stackmap), &key->stackid, ip) != 0) {
		printf("---;");
	} else {
		for (i = MAX_STACK_DEPTH - 1; i >= 0; i--)
				print_ksym(ip[i]);
		
	}

	printf(" %lld\n", count);
	
	// if (bpf_map_lookup_elem(map_fd[1], &key->tret, ip) != 0) {
	// 	printf("---;");
	// } else {
	// 	for (i = PERF_MAX_STACK_DEPTH - 1; i >= 0; i--)
	// 		print_ksym(ip[i]);
	// }
	// printf("-;");
	// if (bpf_map_lookup_elem(map_fd[1], &key->wret, ip) != 0) {
	// 	printf("---;");
	// } else {
	// 	for (i = 0; i < PERF_MAX_STACK_DEPTH; i++)
	// 		print_ksym(ip[i]);
	// }
	// printf(";%s %lld\n", key->waker, count);

	// if ((key->tret == -EEXIST || key->wret == -EEXIST) && !warned) {
	// 	printf("stackmap collisions seen. Consider increasing size\n");
	// 	warned = true;
	// } else if (((int)(key->tret) < 0 || (int)(key->wret) < 0)) {
	// 	printf("err stackid %d %d\n", key->tret, key->wret);
	// }
}

static void print_stacks(int fd)
{
	struct key_t key = {}, next_key;
	__u64 value;

	while (bpf_map_get_next_key(fd, &key, &next_key) == 0) {
		bpf_map_lookup_elem(fd, &next_key, &value);
		print_stack(&next_key, value);
		key = next_key;
	}
}

static int event_handler(void *_ctx, void *data, size_t size)
{
	// struct stack_count_event *event = data;

	// if (event->kstack_sz <= 0 && event->ustack_sz <= 0)
	// 	return 1;

	// printf("COMM: %s (pid=%d) @ CPU %d\n", event->comm, event->pid, event->cpu_id);

	// if (event->kstack_sz > 0) {
	// 	printf("Kernel:\n");
	// 	show_stack_trace(event->kstack, event->kstack_sz / sizeof(__u64), 0);
	// 	printf("\n\n");
	// } else {
	// 	printf("No Kernel Stack\n");
	// }

	// if (event->ustack_sz > 0) {
	// 	printf("Userspace:\n");
	// 	show_stack_trace(event->ustack, event->ustack_sz / sizeof(__u64), event->pid);
	// } else {
	// 	printf("No Userspace Stack\n");
	// }

	printf(".");
	return 0;
}

int main(int argc, char **argv)
{
	int freq = 10000, pid = -1, cpu;
	
	// struct ring_buffer *ring_buf = NULL;
	struct perf_event_attr attr;
	struct bpf_link **links = NULL;
	int err;
	int num_cpus;
	int *pefds = NULL, pefd;
	int i;
	int trace_fd = 0;

	if (load_kallsyms()) {
		printf("failed to process /proc/kallsyms\n");
		return 2;
	}

	libbpf_set_strict_mode(LIBBPF_STRICT_ALL);
	/* Set up libbpf errors and debug info callback */
	libbpf_set_print(libbpf_print_fn);

	trace_fd = open("/sys/kernel/debug/tracing/trace_pipe", O_RDONLY, 0);
	if (trace_fd < 0) {
		printf("cannot open trace_pipe %d\n", trace_fd);
		return trace_fd;
	}

	/* Open BPF application */
	skel = stack_count_bpf__open();
	if (!skel) {
		fprintf(stderr, "Failed to open BPF skeleton\n");
		return 1;
	}

	/* ensure BPF program only handles write() syscalls from our process */
	skel->bss->my_pid = getpid();

	num_cpus = libbpf_num_possible_cpus();
	if (num_cpus <= 0) {
		fprintf(stderr, "Fail to get the number of processors\n");
		return 1;
	}

	/* Load & verify BPF programs */
	err = stack_count_bpf__load(skel);
	if (err) {
		fprintf(stderr, "Failed to load and verify BPF skeleton\n");
		goto cleanup;
	}

	/* Attach tracepoint handler */
	// err = stack_count_bpf__attach(skel);
	// if (err) {
	// 	fprintf(stderr, "Failed to attach BPF skeleton\n");
	// 	goto cleanup;
	// }

	
	if (signal(SIGINT, sig_int) == SIG_ERR) {
		fprintf(stderr, "can't set signal handler: %s\n", strerror(errno));
		goto cleanup;
	}

	printf("Successfully started! Please run `sudo cat /sys/kernel/debug/tracing/trace_pipe` "
		"to see output of the BPF programs.\n");
	
	// ring_buf = ring_buffer__new(bpf_map__fd(skel->maps.events), event_handler, NULL, NULL);
	// if (!ring_buf) {
	// 	err = -1;
	// 	goto cleanup;
	// }

	pefds = malloc(num_cpus * sizeof(int));
	for (i = 0; i < num_cpus; i++)
		pefds[i] = -1;

	links = calloc(num_cpus, sizeof(struct bpf_link *));

	memset(&attr, 0, sizeof(attr));
	attr.type = PERF_TYPE_HARDWARE;
	attr.size = sizeof(attr);
	attr.config = PERF_COUNT_HW_CPU_CYCLES;
	attr.sample_freq = freq;
	attr.freq = 1;

	for (cpu = 0; cpu < num_cpus; cpu++) {
		/* Set up performance monitoring on a CPU/Core */
		pefd = perf_event_open(&attr, pid, cpu, -1, PERF_FLAG_FD_CLOEXEC);
		if (pefd < 0) {
			fprintf(stderr, "Fail to set up performance monitor on a CPU/Core\n");
			goto cleanup;
		}
		pefds[cpu] = pefd;

		/* Attach a BPF program on a CPU */
		links[cpu] = bpf_program__attach_perf_event(skel->progs.profile, pefd);
		if (!links[cpu]) {
			err = -1;
			goto cleanup;
		}
	}

	// while (ring_buffer__poll(ring_buf, -1) >= 0) {
	// }

	printf("start tracing\n");
    while (!stop) {
        // fprintf(stderr, ".");
        // sleep(1);
		static char buf[4096];
		ssize_t sz;
		sz = read(trace_fd, buf, sizeof(buf) - 1);
		if (sz > 0) {
			buf[sz] = '\0';
			// printf("trace: %s\n", buf);
			puts(buf);
		}
    }

	print_stacks(bpf_map__fd(skel->maps.counts));
	

cleanup:
	stack_count_bpf__destroy(skel);
	return -err;
}
