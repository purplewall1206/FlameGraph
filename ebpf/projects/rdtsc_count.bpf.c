// SPDX-License-Identifier: GPL-2.0 OR BSD-3-Clause
/* Copyright (c) 2020 Facebook */
#include <linux/bpf.h>
#include <bpf/bpf_helpers.h>

char LICENSE[] SEC("license") = "Dual BSD/GPL";

int my_pid = 0;

SEC("kprobe/procfs_rw_show+0x2b")
int handle_tp(void *ctx)
{
	// int pid = bpf_get_current_pid_tgid() >> 32;

	// if (pid != my_pid)
	// 	return 0;

	// bpf_printk("BPF triggered from PID %d.\n", pid);

	return 0;
}


// SEC("perf_event")
// int profile(void *ctx)
// {
// 	int pid = bpf_get_current_pid_tgid() >> 32;
// 	bpf_printk("pid:%d profiling\n", pid);
// 	return 0;
// }