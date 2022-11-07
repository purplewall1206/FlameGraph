// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
/* Copyright (c) 2020 Facebook */
#include <linux/bpf.h>
#include <bpf/bpf_helpers.h>
// #include "vmlinux.h"

char LICENSE[] SEC("license") = "Dual BSD/GPL";

int my_pid = 0;




// #define STACKID_FLAGS (0 | BPF_F_FAST_STACK_CMP)

// SEC("kprobe/new_slab")
// int handle_tp(void *ctx)
// {
// 	int pid = bpf_get_current_pid_tgid() >> 32;
// 	struct key k;
// 	unsigned long val = 0;
// 	// if (pid != my_pid)
// 	// 	return 0;

// 	bpf_printk("BPF triggered from PID %d.\n", pid);

// 	bpf_get_current_comm(&k.name, sizeof(k.name));
// 	k.ret = bpf_get_stackid(ctx, &stackmap, STACKID_FLAGS);
// 	bpf_map_update_elem(&counts, &k, &v, BPF_ANY);

// 	return 0;
// }
#define TASK_COMM_LEN 256

#define MAX_STACK_DEPTH         128

#define MAX_ENTRIES  10000

struct key_t {
	char comm[TASK_COMM_LEN];
	unsigned int stackid;
};

struct {
	__uint(type, BPF_MAP_TYPE_HASH);
	__type(key, struct key_t);
	__type(value, unsigned long);
	__uint(max_entries, MAX_ENTRIES);
} counts SEC(".maps");

struct {
	__uint(type, BPF_MAP_TYPE_STACK_TRACE);
	__uint(key_size, sizeof(unsigned int));
	__uint(value_size, MAX_STACK_DEPTH * sizeof(unsigned int));
	__uint(max_entries, MAX_ENTRIES);
} stackmap SEC(".maps");

// struct {
// 	__uint(type, BPF_MAP_TYPE_RINGBUF);
// 	__uint(max_entries, 256 * 1024);
// } events SEC(".maps");

#define STACKID_FLAGS (0 | BPF_F_FAST_STACK_CMP)

SEC("perf_event")
int profile(void *ctx)
{
	int pid = bpf_get_current_pid_tgid() >> 32;
	struct key_t key;


	if (bpf_get_current_comm(key.comm, sizeof(key.comm)))
		key.comm[0] = 0;

	// key.stacks = bpf_get_stack(ctx, event->kstack, sizeof(event->kstack), 0);
	key.stackid = bpf_get_stackid(ctx, &stackmap, STACKID_FLAGS);

	// event->ustack_sz = bpf_get_stack(ctx, event->ustack, sizeof(event->ustack), BPF_F_USER_STACK);
	unsigned int *pv = bpf_map_lookup_elem(&counts, &key);
	if (!pv) {
		unsigned int zero = 0;
		bpf_map_update_elem(&counts, &key, &zero, BPF_ANY);
		pv = bpf_map_lookup_elem(&counts, &key);
		if (!pv) {
			return -1;
		}
	}
	*(pv) += 1;

	return 0;
}