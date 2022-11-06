// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
/* Copyright (c) 2020 Facebook */
#include <linux/bpf.h>
#include <bpf/bpf_helpers.h>

char LICENSE[] SEC("license") = "Dual BSD/GPL";

// struct {
// 	__uint(type, BPF_MAP_TYPE_STACK_TRACE);
// 	__uint(key_size, sizeof(u32));
// 	__uint(value_size, PERF_MAX_STACK_DEPTH * sizeof(u64));
// 	__uint(max_entries, MAX_ENTRIES);
// } stackmap SEC(".maps");

int my_pid = 0;

// struct key {
// 	char name[256];
// 	u32 ret;
// };

// struct {
// 	__uint(type, BPF_MAP_TYPE_HASH);
// 	__type(key, struct key);
// 	__type(value, u64);
// 	__uint(max_entries, MAX_ENTRIES);
// } counts SEC(".maps");



// #define STACKID_FLAGS (0 | BPF_F_FAST_STACK_CMP)

// SEC("kprobe/new_slab")
// int handle_tp(void *ctx)
// {
// 	int pid = bpf_get_current_pid_tgid() >> 32;
// 	struct key k;
// 	u64 val = 0;
// 	// if (pid != my_pid)
// 	// 	return 0;

// 	bpf_printk("BPF triggered from PID %d.\n", pid);

// 	bpf_get_current_comm(&k.name, sizeof(k.name));
// 	k.ret = bpf_get_stackid(ctx, &stackmap, STACKID_FLAGS);
// 	bpf_map_update_elem(&counts, &k, &v, BPF_ANY);

// 	return 0;
// }
#define TASK_COMM_LEN 16

#define MAX_STACK_DEPTH         128

typedef __u64 stack_trace_t[MAX_STACK_DEPTH];

struct stacktrace_event {
	__u32 pid;
	__u32 cpu_id;
	char comm[TASK_COMM_LEN];
	__s32 kstack_sz;
	__s32 ustack_sz;
	stack_trace_t kstack;
	stack_trace_t ustack;
};

struct {
	__uint(type, BPF_MAP_TYPE_RINGBUF);
	__uint(max_entries, 256 * 1024);
} events SEC(".maps");

SEC("perf_event")
int profile(void *ctx)
{
	int pid = bpf_get_current_pid_tgid() >> 32;
	int cpu_id = bpf_get_smp_processor_id();
	struct stacktrace_event *event;
	int cp;

	event = bpf_ringbuf_reserve(&events, sizeof(*event), 0);
	if (!event)
		return 1;

	event->pid = pid;
	event->cpu_id = cpu_id;

	if (bpf_get_current_comm(event->comm, sizeof(event->comm)))
		event->comm[0] = 0;

	event->kstack_sz = bpf_get_stack(ctx, event->kstack, sizeof(event->kstack), 0);

	event->ustack_sz = bpf_get_stack(ctx, event->ustack, sizeof(event->ustack), BPF_F_USER_STACK);

	bpf_ringbuf_submit(event, 0);

	return 0;
}