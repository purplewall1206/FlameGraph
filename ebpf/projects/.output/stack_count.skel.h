/* SPDX-License-Identifier: (LGPL-2.1 OR BSD-2-Clause) */

/* THIS FILE IS AUTOGENERATED BY BPFTOOL! */
#ifndef __STACK_COUNT_BPF_SKEL_H__
#define __STACK_COUNT_BPF_SKEL_H__

#include <errno.h>
#include <stdlib.h>
#include <bpf/libbpf.h>

struct stack_count_bpf {
	struct bpf_object_skeleton *skeleton;
	struct bpf_object *obj;
	struct {
		struct bpf_map *stackmap;
		struct bpf_map *counts;
		struct bpf_map *bss;
	} maps;
	struct {
		struct bpf_program *profile;
	} progs;
	struct {
		struct bpf_link *profile;
	} links;
	struct stack_count_bpf__bss {
		int my_pid;
	} *bss;

#ifdef __cplusplus
	static inline struct stack_count_bpf *open(const struct bpf_object_open_opts *opts = nullptr);
	static inline struct stack_count_bpf *open_and_load();
	static inline int load(struct stack_count_bpf *skel);
	static inline int attach(struct stack_count_bpf *skel);
	static inline void detach(struct stack_count_bpf *skel);
	static inline void destroy(struct stack_count_bpf *skel);
	static inline const void *elf_bytes(size_t *sz);
#endif /* __cplusplus */
};

static void
stack_count_bpf__destroy(struct stack_count_bpf *obj)
{
	if (!obj)
		return;
	if (obj->skeleton)
		bpf_object__destroy_skeleton(obj->skeleton);
	free(obj);
}

static inline int
stack_count_bpf__create_skeleton(struct stack_count_bpf *obj);

static inline struct stack_count_bpf *
stack_count_bpf__open_opts(const struct bpf_object_open_opts *opts)
{
	struct stack_count_bpf *obj;
	int err;

	obj = (struct stack_count_bpf *)calloc(1, sizeof(*obj));
	if (!obj) {
		errno = ENOMEM;
		return NULL;
	}

	err = stack_count_bpf__create_skeleton(obj);
	if (err)
		goto err_out;

	err = bpf_object__open_skeleton(obj->skeleton, opts);
	if (err)
		goto err_out;

	return obj;
err_out:
	stack_count_bpf__destroy(obj);
	errno = -err;
	return NULL;
}

static inline struct stack_count_bpf *
stack_count_bpf__open(void)
{
	return stack_count_bpf__open_opts(NULL);
}

static inline int
stack_count_bpf__load(struct stack_count_bpf *obj)
{
	return bpf_object__load_skeleton(obj->skeleton);
}

static inline struct stack_count_bpf *
stack_count_bpf__open_and_load(void)
{
	struct stack_count_bpf *obj;
	int err;

	obj = stack_count_bpf__open();
	if (!obj)
		return NULL;
	err = stack_count_bpf__load(obj);
	if (err) {
		stack_count_bpf__destroy(obj);
		errno = -err;
		return NULL;
	}
	return obj;
}

static inline int
stack_count_bpf__attach(struct stack_count_bpf *obj)
{
	return bpf_object__attach_skeleton(obj->skeleton);
}

static inline void
stack_count_bpf__detach(struct stack_count_bpf *obj)
{
	return bpf_object__detach_skeleton(obj->skeleton);
}

static inline const void *stack_count_bpf__elf_bytes(size_t *sz);

static inline int
stack_count_bpf__create_skeleton(struct stack_count_bpf *obj)
{
	struct bpf_object_skeleton *s;
	int err;

	s = (struct bpf_object_skeleton *)calloc(1, sizeof(*s));
	if (!s)	{
		err = -ENOMEM;
		goto err;
	}

	s->sz = sizeof(*s);
	s->name = "stack_count_bpf";
	s->obj = &obj->obj;

	/* maps */
	s->map_cnt = 3;
	s->map_skel_sz = sizeof(*s->maps);
	s->maps = (struct bpf_map_skeleton *)calloc(s->map_cnt, s->map_skel_sz);
	if (!s->maps) {
		err = -ENOMEM;
		goto err;
	}

	s->maps[0].name = "stackmap";
	s->maps[0].map = &obj->maps.stackmap;

	s->maps[1].name = "counts";
	s->maps[1].map = &obj->maps.counts;

	s->maps[2].name = "stack_co.bss";
	s->maps[2].map = &obj->maps.bss;
	s->maps[2].mmaped = (void **)&obj->bss;

	/* programs */
	s->prog_cnt = 1;
	s->prog_skel_sz = sizeof(*s->progs);
	s->progs = (struct bpf_prog_skeleton *)calloc(s->prog_cnt, s->prog_skel_sz);
	if (!s->progs) {
		err = -ENOMEM;
		goto err;
	}

	s->progs[0].name = "profile";
	s->progs[0].prog = &obj->progs.profile;
	s->progs[0].link = &obj->links.profile;

	s->data = (void *)stack_count_bpf__elf_bytes(&s->data_sz);

	obj->skeleton = s;
	return 0;
err:
	bpf_object__destroy_skeleton(s);
	return err;
}

static inline const void *stack_count_bpf__elf_bytes(size_t *sz)
{
	*sz = 3944;
	return (const void *)"\
\x7f\x45\x4c\x46\x02\x01\x01\0\0\0\0\0\0\0\0\0\x01\0\xf7\0\x01\0\0\0\0\0\0\0\0\
\0\0\0\0\0\0\0\0\0\0\0\xe8\x0b\0\0\0\0\0\0\0\0\0\0\x40\0\0\0\0\0\x40\0\x0e\0\
\x01\0\xbf\x16\0\0\0\0\0\0\x85\0\0\0\x0e\0\0\0\xbf\xa1\0\0\0\0\0\0\x07\x01\0\0\
\xf8\xfe\xff\xff\xb7\x02\0\0\0\x01\0\0\x85\0\0\0\x10\0\0\0\x15\0\x02\0\0\0\0\0\
\xb7\x01\0\0\0\0\0\0\x73\x1a\xf8\xfe\0\0\0\0\xbf\x61\0\0\0\0\0\0\x18\x02\0\0\0\
\0\0\0\0\0\0\0\0\0\0\0\xb7\x03\0\0\0\x02\0\0\x85\0\0\0\x1b\0\0\0\x63\x0a\xf8\
\xff\0\0\0\0\xbf\xa2\0\0\0\0\0\0\x07\x02\0\0\xf8\xfe\xff\xff\x18\x01\0\0\0\0\0\
\0\0\0\0\0\0\0\0\0\x85\0\0\0\x01\0\0\0\x55\0\x12\0\0\0\0\0\xb7\x01\0\0\0\0\0\0\
\x63\x1a\xf4\xfe\0\0\0\0\xbf\xa6\0\0\0\0\0\0\x07\x06\0\0\xf8\xfe\xff\xff\xbf\
\xa3\0\0\0\0\0\0\x07\x03\0\0\xf4\xfe\xff\xff\x18\x01\0\0\0\0\0\0\0\0\0\0\0\0\0\
\0\xbf\x62\0\0\0\0\0\0\xb7\x04\0\0\0\0\0\0\x85\0\0\0\x02\0\0\0\x18\x01\0\0\0\0\
\0\0\0\0\0\0\0\0\0\0\xbf\x62\0\0\0\0\0\0\x85\0\0\0\x01\0\0\0\x18\x01\0\0\xff\
\xff\xff\xff\0\0\0\0\0\0\0\0\x15\0\x04\0\0\0\0\0\x61\x01\0\0\0\0\0\0\x07\x01\0\
\0\x01\0\0\0\x63\x10\0\0\0\0\0\0\xb7\x01\0\0\0\0\0\0\xbf\x10\0\0\0\0\0\0\x95\0\
\0\0\0\0\0\0\x44\x75\x61\x6c\x20\x42\x53\x44\x2f\x47\x50\x4c\0\0\0\0\0\0\0\0\0\
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x9f\xeb\x01\0\x18\0\0\0\0\0\0\0\xa8\
\x02\0\0\xa8\x02\0\0\xb0\x02\0\0\0\0\0\0\0\0\0\x02\x03\0\0\0\x01\0\0\0\0\0\0\
\x01\x04\0\0\0\x20\0\0\x01\0\0\0\0\0\0\0\x03\0\0\0\0\x02\0\0\0\x04\0\0\0\x07\0\
\0\0\x05\0\0\0\0\0\0\x01\x04\0\0\0\x20\0\0\0\0\0\0\0\0\0\0\x02\x06\0\0\0\0\0\0\
\0\0\0\0\x03\0\0\0\0\x02\0\0\0\x04\0\0\0\x04\0\0\0\0\0\0\0\0\0\0\x02\x08\0\0\0\
\0\0\0\0\0\0\0\x03\0\0\0\0\x02\0\0\0\x04\0\0\0\0\x02\0\0\0\0\0\0\0\0\0\x02\x0a\
\0\0\0\0\0\0\0\0\0\0\x03\0\0\0\0\x02\0\0\0\x04\0\0\0\x10\x27\0\0\0\0\0\0\x04\0\
\0\x04\x20\0\0\0\x19\0\0\0\x01\0\0\0\0\0\0\0\x1e\0\0\0\x05\0\0\0\x40\0\0\0\x27\
\0\0\0\x07\0\0\0\x80\0\0\0\x32\0\0\0\x09\0\0\0\xc0\0\0\0\x3e\0\0\0\0\0\0\x0e\
\x0b\0\0\0\x01\0\0\0\0\0\0\0\0\0\0\x02\x0e\0\0\0\0\0\0\0\0\0\0\x03\0\0\0\0\x02\
\0\0\0\x04\0\0\0\x01\0\0\0\0\0\0\0\0\0\0\x02\x10\0\0\0\x47\0\0\0\x02\0\0\x04\
\x04\x01\0\0\x4d\0\0\0\x12\0\0\0\0\0\0\0\x52\0\0\0\x13\0\0\0\0\x08\0\0\x5a\0\0\
\0\0\0\0\x01\x01\0\0\0\x08\0\0\x01\0\0\0\0\0\0\0\x03\0\0\0\0\x11\0\0\0\x04\0\0\
\0\0\x01\0\0\x5f\0\0\0\0\0\0\x01\x04\0\0\0\x20\0\0\0\0\0\0\0\0\0\0\x02\x15\0\0\
\0\x6c\0\0\0\0\0\0\x01\x08\0\0\0\x40\0\0\0\0\0\0\0\x04\0\0\x04\x20\0\0\0\x19\0\
\0\0\x0d\0\0\0\0\0\0\0\x7a\0\0\0\x0f\0\0\0\x40\0\0\0\x7e\0\0\0\x14\0\0\0\x80\0\
\0\0\x32\0\0\0\x09\0\0\0\xc0\0\0\0\x84\0\0\0\0\0\0\x0e\x16\0\0\0\x01\0\0\0\0\0\
\0\0\0\0\0\x02\0\0\0\0\0\0\0\0\x01\0\0\x0d\x02\0\0\0\x8b\0\0\0\x18\0\0\0\x8f\0\
\0\0\x01\0\0\x0c\x19\0\0\0\0\0\0\0\0\0\0\x03\0\0\0\0\x11\0\0\0\x04\0\0\0\x0d\0\
\0\0\x8e\x02\0\0\0\0\0\x0e\x1b\0\0\0\x01\0\0\0\x96\x02\0\0\0\0\0\x0e\x02\0\0\0\
\x01\0\0\0\x9d\x02\0\0\x01\0\0\x0f\0\0\0\0\x1d\0\0\0\0\0\0\0\x04\0\0\0\xa2\x02\
\0\0\x02\0\0\x0f\0\0\0\0\x0c\0\0\0\0\0\0\0\x20\0\0\0\x17\0\0\0\0\0\0\0\x20\0\0\
\0\xa8\x02\0\0\x01\0\0\x0f\0\0\0\0\x1c\0\0\0\0\0\0\0\x0d\0\0\0\0\x69\x6e\x74\0\
\x5f\x5f\x41\x52\x52\x41\x59\x5f\x53\x49\x5a\x45\x5f\x54\x59\x50\x45\x5f\x5f\0\
\x74\x79\x70\x65\0\x6b\x65\x79\x5f\x73\x69\x7a\x65\0\x76\x61\x6c\x75\x65\x5f\
\x73\x69\x7a\x65\0\x6d\x61\x78\x5f\x65\x6e\x74\x72\x69\x65\x73\0\x73\x74\x61\
\x63\x6b\x6d\x61\x70\0\x6b\x65\x79\x5f\x74\0\x63\x6f\x6d\x6d\0\x73\x74\x61\x63\
\x6b\x69\x64\0\x63\x68\x61\x72\0\x75\x6e\x73\x69\x67\x6e\x65\x64\x20\x69\x6e\
\x74\0\x75\x6e\x73\x69\x67\x6e\x65\x64\x20\x6c\x6f\x6e\x67\0\x6b\x65\x79\0\x76\
\x61\x6c\x75\x65\0\x63\x6f\x75\x6e\x74\x73\0\x63\x74\x78\0\x70\x72\x6f\x66\x69\
\x6c\x65\0\x70\x65\x72\x66\x5f\x65\x76\x65\x6e\x74\0\x2f\x68\x6f\x6d\x65\x2f\
\x77\x61\x6e\x67\x7a\x63\x2f\x44\x6f\x63\x75\x6d\x65\x6e\x74\x73\x2f\x46\x6c\
\x61\x6d\x65\x47\x72\x61\x70\x68\x2d\x66\x6f\x72\x2d\x6e\x65\x77\x2d\x64\x65\
\x66\x65\x6e\x73\x65\x2f\x65\x62\x70\x66\x2f\x70\x72\x6f\x6a\x65\x63\x74\x73\
\x2f\x73\x74\x61\x63\x6b\x5f\x63\x6f\x75\x6e\x74\x2e\x62\x70\x66\x2e\x63\0\x69\
\x6e\x74\x20\x70\x72\x6f\x66\x69\x6c\x65\x28\x76\x6f\x69\x64\x20\x2a\x63\x74\
\x78\x29\0\x09\x69\x6e\x74\x20\x70\x69\x64\x20\x3d\x20\x62\x70\x66\x5f\x67\x65\
\x74\x5f\x63\x75\x72\x72\x65\x6e\x74\x5f\x70\x69\x64\x5f\x74\x67\x69\x64\x28\
\x29\x20\x3e\x3e\x20\x33\x32\x3b\0\x09\x69\x66\x20\x28\x62\x70\x66\x5f\x67\x65\
\x74\x5f\x63\x75\x72\x72\x65\x6e\x74\x5f\x63\x6f\x6d\x6d\x28\x6b\x65\x79\x2e\
\x63\x6f\x6d\x6d\x2c\x20\x73\x69\x7a\x65\x6f\x66\x28\x6b\x65\x79\x2e\x63\x6f\
\x6d\x6d\x29\x29\x29\0\x09\x09\x6b\x65\x79\x2e\x63\x6f\x6d\x6d\x5b\x30\x5d\x20\
\x3d\x20\x30\x3b\0\x09\x6b\x65\x79\x2e\x73\x74\x61\x63\x6b\x69\x64\x20\x3d\x20\
\x62\x70\x66\x5f\x67\x65\x74\x5f\x73\x74\x61\x63\x6b\x69\x64\x28\x63\x74\x78\
\x2c\x20\x26\x73\x74\x61\x63\x6b\x6d\x61\x70\x2c\x20\x53\x54\x41\x43\x4b\x49\
\x44\x5f\x46\x4c\x41\x47\x53\x29\x3b\0\x09\x75\x6e\x73\x69\x67\x6e\x65\x64\x20\
\x69\x6e\x74\x20\x2a\x70\x76\x20\x3d\x20\x62\x70\x66\x5f\x6d\x61\x70\x5f\x6c\
\x6f\x6f\x6b\x75\x70\x5f\x65\x6c\x65\x6d\x28\x26\x63\x6f\x75\x6e\x74\x73\x2c\
\x20\x26\x6b\x65\x79\x29\x3b\0\x09\x69\x66\x20\x28\x21\x70\x76\x29\x20\x7b\0\
\x09\x09\x75\x6e\x73\x69\x67\x6e\x65\x64\x20\x69\x6e\x74\x20\x7a\x65\x72\x6f\
\x20\x3d\x20\x30\x3b\0\x09\x09\x62\x70\x66\x5f\x6d\x61\x70\x5f\x75\x70\x64\x61\
\x74\x65\x5f\x65\x6c\x65\x6d\x28\x26\x63\x6f\x75\x6e\x74\x73\x2c\x20\x26\x6b\
\x65\x79\x2c\x20\x26\x7a\x65\x72\x6f\x2c\x20\x42\x50\x46\x5f\x41\x4e\x59\x29\
\x3b\0\x09\x09\x70\x76\x20\x3d\x20\x62\x70\x66\x5f\x6d\x61\x70\x5f\x6c\x6f\x6f\
\x6b\x75\x70\x5f\x65\x6c\x65\x6d\x28\x26\x63\x6f\x75\x6e\x74\x73\x2c\x20\x26\
\x6b\x65\x79\x29\x3b\0\x09\x2a\x28\x70\x76\x29\x20\x2b\x3d\x20\x31\x3b\0\x7d\0\
\x4c\x49\x43\x45\x4e\x53\x45\0\x6d\x79\x5f\x70\x69\x64\0\x2e\x62\x73\x73\0\x2e\
\x6d\x61\x70\x73\0\x6c\x69\x63\x65\x6e\x73\x65\0\x9f\xeb\x01\0\x20\0\0\0\0\0\0\
\0\x14\0\0\0\x14\0\0\0\x1c\x01\0\0\x30\x01\0\0\0\0\0\0\x08\0\0\0\x97\0\0\0\x01\
\0\0\0\0\0\0\0\x1a\0\0\0\x10\0\0\0\x97\0\0\0\x11\0\0\0\0\0\0\0\xa2\0\0\0\xf4\0\
\0\0\0\x08\x01\0\x08\0\0\0\xa2\0\0\0\x0b\x01\0\0\x0c\x10\x01\0\x18\0\0\0\xa2\0\
\0\0\0\0\0\0\0\0\0\0\x20\0\0\0\xa2\0\0\0\x38\x01\0\0\x06\x20\x01\0\x30\0\0\0\
\xa2\0\0\0\x38\x01\0\0\x06\x20\x01\0\x40\0\0\0\xa2\0\0\0\x6f\x01\0\0\x0f\x24\
\x01\0\x48\0\0\0\xa2\0\0\0\x82\x01\0\0\x10\x30\x01\0\x70\0\0\0\xa2\0\0\0\x82\
\x01\0\0\x0e\x30\x01\0\x80\0\0\0\xa2\0\0\0\x82\x01\0\0\x10\x30\x01\0\x88\0\0\0\
\xa2\0\0\0\xc1\x01\0\0\x15\x3c\x01\0\xa0\0\0\0\xa2\0\0\0\xf9\x01\0\0\x06\x40\
\x01\0\xb0\0\0\0\xa2\0\0\0\x05\x02\0\0\x10\x44\x01\0\xc0\0\0\0\xa2\0\0\0\0\0\0\
\0\0\0\0\0\xd8\0\0\0\xa2\0\0\0\x1e\x02\0\0\x03\x48\x01\0\0\x01\0\0\xa2\0\0\0\
\x54\x02\0\0\x08\x4c\x01\0\x38\x01\0\0\xa2\0\0\0\x7f\x02\0\0\x08\x60\x01\0\x58\
\x01\0\0\xa2\0\0\0\x8c\x02\0\0\x01\x6c\x01\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\
\0\0\0\0\0\0\0\0\0\0\0\x03\0\x03\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x92\0\0\0\0\
\0\x03\0\x48\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x8b\0\0\0\0\0\x03\0\x38\x01\0\0\0\0\
\0\0\0\0\0\0\0\0\0\0\x84\0\0\0\0\0\x03\0\x58\x01\0\0\0\0\0\0\0\0\0\0\0\0\0\0\
\x54\0\0\0\x12\0\x03\0\0\0\0\0\0\0\0\0\x68\x01\0\0\0\0\0\0\x35\0\0\0\x11\0\x07\
\0\0\0\0\0\0\0\0\0\x20\0\0\0\0\0\0\0\x23\0\0\0\x11\0\x07\0\x20\0\0\0\0\0\0\0\
\x20\0\0\0\0\0\0\0\x7c\0\0\0\x11\0\x05\0\0\0\0\0\0\0\0\0\x0d\0\0\0\0\0\0\0\x5c\
\0\0\0\x11\0\x06\0\0\0\0\0\0\0\0\0\x04\0\0\0\0\0\0\0\x50\0\0\0\0\0\0\0\x01\0\0\
\0\x06\0\0\0\x88\0\0\0\0\0\0\0\x01\0\0\0\x07\0\0\0\xd8\0\0\0\0\0\0\0\x01\0\0\0\
\x07\0\0\0\0\x01\0\0\0\0\0\0\x01\0\0\0\x07\0\0\0\x7c\x02\0\0\0\0\0\0\x04\0\0\0\
\x09\0\0\0\x94\x02\0\0\0\0\0\0\x04\0\0\0\x06\0\0\0\xa0\x02\0\0\0\0\0\0\x04\0\0\
\0\x07\0\0\0\xb8\x02\0\0\0\0\0\0\x04\0\0\0\x08\0\0\0\x2c\0\0\0\0\0\0\0\x04\0\0\
\0\x01\0\0\0\x40\0\0\0\0\0\0\0\x04\0\0\0\x01\0\0\0\x50\0\0\0\0\0\0\0\x04\0\0\0\
\x01\0\0\0\x60\0\0\0\0\0\0\0\x04\0\0\0\x01\0\0\0\x70\0\0\0\0\0\0\0\x04\0\0\0\
\x01\0\0\0\x80\0\0\0\0\0\0\0\x04\0\0\0\x01\0\0\0\x90\0\0\0\0\0\0\0\x04\0\0\0\
\x01\0\0\0\xa0\0\0\0\0\0\0\0\x04\0\0\0\x01\0\0\0\xb0\0\0\0\0\0\0\0\x04\0\0\0\
\x01\0\0\0\xc0\0\0\0\0\0\0\0\x04\0\0\0\x01\0\0\0\xd0\0\0\0\0\0\0\0\x04\0\0\0\
\x01\0\0\0\xe0\0\0\0\0\0\0\0\x04\0\0\0\x01\0\0\0\xf0\0\0\0\0\0\0\0\x04\0\0\0\
\x01\0\0\0\0\x01\0\0\0\0\0\0\x04\0\0\0\x01\0\0\0\x10\x01\0\0\0\0\0\0\x04\0\0\0\
\x01\0\0\0\x20\x01\0\0\0\0\0\0\x04\0\0\0\x01\0\0\0\x30\x01\0\0\0\0\0\0\x04\0\0\
\0\x01\0\0\0\x40\x01\0\0\0\0\0\0\x04\0\0\0\x01\0\0\0\x0e\x11\x0f\x10\0\x2e\x74\
\x65\x78\x74\0\x2e\x72\x65\x6c\x2e\x42\x54\x46\x2e\x65\x78\x74\0\x2e\x72\x65\
\x6c\x70\x65\x72\x66\x5f\x65\x76\x65\x6e\x74\0\x63\x6f\x75\x6e\x74\x73\0\x2e\
\x62\x73\x73\0\x2e\x6d\x61\x70\x73\0\x73\x74\x61\x63\x6b\x6d\x61\x70\0\x2e\x6c\
\x6c\x76\x6d\x5f\x61\x64\x64\x72\x73\x69\x67\0\x6c\x69\x63\x65\x6e\x73\x65\0\
\x70\x72\x6f\x66\x69\x6c\x65\0\x6d\x79\x5f\x70\x69\x64\0\x2e\x73\x74\x72\x74\
\x61\x62\0\x2e\x73\x79\x6d\x74\x61\x62\0\x2e\x72\x65\x6c\x2e\x42\x54\x46\0\x4c\
\x49\x43\x45\x4e\x53\x45\0\x4c\x42\x42\x30\x5f\x35\0\x4c\x42\x42\x30\x5f\x34\0\
\x4c\x42\x42\x30\x5f\x32\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\
\0\0\x63\0\0\0\x03\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x4c\x0b\0\0\0\0\0\0\
\x99\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x01\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x01\0\0\0\
\x01\0\0\0\x06\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x40\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\
\0\0\0\0\0\0\0\0\x04\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x18\0\0\0\x01\0\0\0\x06\0\0\
\0\0\0\0\0\0\0\0\0\0\0\0\0\x40\0\0\0\0\0\0\0\x68\x01\0\0\0\0\0\0\0\0\0\0\0\0\0\
\0\x08\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x14\0\0\0\x09\0\0\0\x40\0\0\0\0\0\0\0\0\0\
\0\0\0\0\0\0\xa8\x09\0\0\0\0\0\0\x40\0\0\0\0\0\0\0\x0d\0\0\0\x03\0\0\0\x08\0\0\
\0\0\0\0\0\x10\0\0\0\0\0\0\0\x4c\0\0\0\x01\0\0\0\x03\0\0\0\0\0\0\0\0\0\0\0\0\0\
\0\0\xa8\x01\0\0\0\0\0\0\x0d\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x01\0\0\0\0\0\0\0\0\
\0\0\0\0\0\0\0\x2a\0\0\0\x08\0\0\0\x03\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\xb8\x01\0\
\0\0\0\0\0\x04\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x04\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\
\x2f\0\0\0\x01\0\0\0\x03\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\xb8\x01\0\0\0\0\0\0\x40\
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x08\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x77\0\0\0\x01\
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\xf8\x01\0\0\0\0\0\0\x70\x05\0\0\0\0\0\0\
\0\0\0\0\0\0\0\0\x04\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x73\0\0\0\x09\0\0\0\x40\0\0\
\0\0\0\0\0\0\0\0\0\0\0\0\0\xe8\x09\0\0\0\0\0\0\x40\0\0\0\0\0\0\0\x0d\0\0\0\x08\
\0\0\0\x08\0\0\0\0\0\0\0\x10\0\0\0\0\0\0\0\x0b\0\0\0\x01\0\0\0\0\0\0\0\0\0\0\0\
\0\0\0\0\0\0\0\0\x68\x07\0\0\0\0\0\0\x50\x01\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x04\0\
\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x07\0\0\0\x09\0\0\0\x40\0\0\0\0\0\0\0\0\0\0\0\0\0\
\0\0\x28\x0a\0\0\0\0\0\0\x20\x01\0\0\0\0\0\0\x0d\0\0\0\x0a\0\0\0\x08\0\0\0\0\0\
\0\0\x10\0\0\0\0\0\0\0\x3e\0\0\0\x03\x4c\xff\x6f\0\0\0\x80\0\0\0\0\0\0\0\0\0\0\
\0\0\x48\x0b\0\0\0\0\0\0\x04\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\x01\0\0\0\0\0\0\0\0\
\0\0\0\0\0\0\0\x6b\0\0\0\x02\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\0\xb8\x08\0\0\
\0\0\0\0\xf0\0\0\0\0\0\0\0\x01\0\0\0\x05\0\0\0\x08\0\0\0\0\0\0\0\x18\0\0\0\0\0\
\0\0";
}

#ifdef __cplusplus
struct stack_count_bpf *stack_count_bpf::open(const struct bpf_object_open_opts *opts) { return stack_count_bpf__open_opts(opts); }
struct stack_count_bpf *stack_count_bpf::open_and_load() { return stack_count_bpf__open_and_load(); }
int stack_count_bpf::load(struct stack_count_bpf *skel) { return stack_count_bpf__load(skel); }
int stack_count_bpf::attach(struct stack_count_bpf *skel) { return stack_count_bpf__attach(skel); }
void stack_count_bpf::detach(struct stack_count_bpf *skel) { stack_count_bpf__detach(skel); }
void stack_count_bpf::destroy(struct stack_count_bpf *skel) { stack_count_bpf__destroy(skel); }
const void *stack_count_bpf::elf_bytes(size_t *sz) { return stack_count_bpf__elf_bytes(sz); }
#endif /* __cplusplus */

__attribute__((unused)) static void
stack_count_bpf__assert(struct stack_count_bpf *s __attribute__((unused)))
{
#ifdef __cplusplus
#define _Static_assert static_assert
#endif
	_Static_assert(sizeof(s->bss->my_pid) == 4, "unexpected size of 'my_pid'");
#ifdef __cplusplus
#undef _Static_assert
#endif
}

#endif /* __STACK_COUNT_BPF_SKEL_H__ */
