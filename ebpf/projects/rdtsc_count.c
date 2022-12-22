// SPDX-License-Identifier: (LGPL-2.1 OR BSD-2-Clause)
/* Copyright (c) 2020 Facebook */
#include <stdio.h>
#include <unistd.h>
#include <signal.h>
#include <sys/resource.h>
#include <bpf/libbpf.h>
#include <fcntl.h>
#include "rdtsc_count.skel.h"
#include <sys/syscall.h>
#include <sys/sysinfo.h>
#include <linux/perf_event.h>

static int libbpf_print_fn(enum libbpf_print_level level, const char *format, va_list args)
{
	return vfprintf(stderr, format, args);
}

static volatile sig_atomic_t stop;

static void sig_int(int signo)
{
	stop = 1;
}

// static long perf_event_open(struct perf_event_attr *hw_event, pid_t pid,
// 			    int cpu, int group_fd, unsigned long flags)
// {
// 	int ret;

// 	ret = syscall(__NR_perf_event_open, hw_event, pid, cpu, group_fd, flags);
// 	return ret;
// }


int main(int argc, char **argv)
{
	struct rdtsc_count_bpf *skel;
	int err;
	int trace_fd = 0;
	struct perf_event_attr attr;
	struct bpf_link **links = NULL;
	int num_cpus;
	int *pefds = NULL, pefd;
	int freq = 10000, pid = -1, cpu;
	int i;


	libbpf_set_strict_mode(LIBBPF_STRICT_ALL);
	/* Set up libbpf errors and debug info callback */
	libbpf_set_print(libbpf_print_fn);

	trace_fd = open("/sys/kernel/debug/tracing/trace_pipe", O_RDONLY, 0);
	if (trace_fd < 0) {
		printf("cannot open trace_pipe %d\n", trace_fd);
		return trace_fd;
	}

	/* Open BPF application */
	skel = rdtsc_count_bpf__open();
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
	err = rdtsc_count_bpf__load(skel);
	if (err) {
		fprintf(stderr, "Failed to load and verify BPF skeleton\n");
		goto cleanup;
	}

	/* Attach tracepoint handler */
	err = rdtsc_count_bpf__attach(skel);
	if (err) {
		fprintf(stderr, "Failed to attach BPF skeleton\n");
		goto cleanup;
	}

	
	if (signal(SIGINT, sig_int) == SIG_ERR) {
		fprintf(stderr, "can't set signal handler: %s\n", strerror(errno));
		goto cleanup;
	}

	printf("Successfully started! Please run `sudo cat /sys/kernel/debug/tracing/trace_pipe` "
		"to see output of the BPF programs.\n");

	// pefds = malloc(num_cpus * sizeof(int));
	// for (i = 0; i < num_cpus; i++)
	// 	pefds[i] = -1;

	// links = calloc(num_cpus, sizeof(struct bpf_link *));

	// memset(&attr, 0, sizeof(attr));
	// attr.type = PERF_TYPE_HARDWARE;
	// attr.size = sizeof(attr);
	// attr.config = PERF_COUNT_HW_CPU_CYCLES;
	// attr.sample_freq = freq;
	// attr.freq = 1;

	// for (cpu = 0; cpu < num_cpus; cpu++) {
	// 	/* Set up performance monitoring on a CPU/Core */
	// 	pefd = perf_event_open(&attr, pid, cpu, -1, PERF_FLAG_FD_CLOEXEC);
	// 	if (pefd < 0) {
	// 		fprintf(stderr, "Fail to set up performance monitor on a CPU/Core\n");
	// 		goto cleanup;
	// 	}
	// 	pefds[cpu] = pefd;

	// 	/* Attach a BPF program on a CPU */
	// 	links[cpu] = bpf_program__attach_perf_event(skel->progs.profile, pefd);
	// 	if (!links[cpu]) {
	// 		err = -1;
	// 		goto cleanup;
	// 	}
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

cleanup:
	rdtsc_count_bpf__destroy(skel);
	return -err;
}
