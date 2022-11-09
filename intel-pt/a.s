
a.out：     文件格式 elf64-x86-64


Disassembly of section .interp:

0000000000000318 <.interp>:
 318:	2f                   	(bad)  
 319:	6c                   	insb   (%dx),%es:(%rdi)
 31a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 321:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 326:	78 2d                	js     355 <__abi_tag-0x37>
 328:	78 38                	js     362 <__abi_tag-0x2a>
 32a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 330:	6f                   	outsl  %ds:(%rsi),(%dx)
 331:	2e 32 00             	cs xor (%rax),%al

Disassembly of section .note.gnu.property:

0000000000000338 <.note.gnu.property>:
 338:	04 00                	add    $0x0,%al
 33a:	00 00                	add    %al,(%rax)
 33c:	20 00                	and    %al,(%rax)
 33e:	00 00                	add    %al,(%rax)
 340:	05 00 00 00 47       	add    $0x47000000,%eax
 345:	4e 55                	rex.WRX push %rbp
 347:	00 02                	add    %al,(%rdx)
 349:	00 00                	add    %al,(%rax)
 34b:	c0 04 00 00          	rolb   $0x0,(%rax,%rax,1)
 34f:	00 03                	add    %al,(%rbx)
 351:	00 00                	add    %al,(%rax)
 353:	00 00                	add    %al,(%rax)
 355:	00 00                	add    %al,(%rax)
 357:	00 02                	add    %al,(%rdx)
 359:	80 00 c0             	addb   $0xc0,(%rax)
 35c:	04 00                	add    $0x0,%al
 35e:	00 00                	add    %al,(%rax)
 360:	01 00                	add    %eax,(%rax)
 362:	00 00                	add    %al,(%rax)
 364:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000368 <.note.gnu.build-id>:
 368:	04 00                	add    $0x0,%al
 36a:	00 00                	add    %al,(%rax)
 36c:	14 00                	adc    $0x0,%al
 36e:	00 00                	add    %al,(%rax)
 370:	03 00                	add    (%rax),%eax
 372:	00 00                	add    %al,(%rax)
 374:	47                   	rex.RXB
 375:	4e 55                	rex.WRX push %rbp
 377:	00 21                	add    %ah,(%rcx)
 379:	40 e8 1a 73 f7 57    	rex call 57f77699 <_end+0x57f73681>
 37f:	35 db 4a 1b 49       	xor    $0x491b4adb,%eax
 384:	1e                   	(bad)  
 385:	29 19                	sub    %ebx,(%rcx)
 387:	db d1                	fcmovnbe %st(1),%st
 389:	83                   	.byte 0x83
 38a:	ae                   	scas   %es:(%rdi),%al
 38b:	7c                   	.byte 0x7c

Disassembly of section .note.ABI-tag:

000000000000038c <__abi_tag>:
 38c:	04 00                	add    $0x0,%al
 38e:	00 00                	add    %al,(%rax)
 390:	10 00                	adc    %al,(%rax)
 392:	00 00                	add    %al,(%rax)
 394:	01 00                	add    %eax,(%rax)
 396:	00 00                	add    %al,(%rax)
 398:	47                   	rex.RXB
 399:	4e 55                	rex.WRX push %rbp
 39b:	00 00                	add    %al,(%rax)
 39d:	00 00                	add    %al,(%rax)
 39f:	00 03                	add    %al,(%rbx)
 3a1:	00 00                	add    %al,(%rax)
 3a3:	00 02                	add    %al,(%rdx)
 3a5:	00 00                	add    %al,(%rax)
 3a7:	00 00                	add    %al,(%rax)
 3a9:	00 00                	add    %al,(%rax)
	...

Disassembly of section .gnu.hash:

00000000000003b0 <.gnu.hash>:
 3b0:	02 00                	add    (%rax),%al
 3b2:	00 00                	add    %al,(%rax)
 3b4:	05 00 00 00 01       	add    $0x1000000,%eax
 3b9:	00 00                	add    %al,(%rax)
 3bb:	00 06                	add    %al,(%rsi)
 3bd:	00 00                	add    %al,(%rax)
 3bf:	00 00                	add    %al,(%rax)
 3c1:	00 81 00 00 00 00    	add    %al,0x0(%rcx)
 3c7:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 3cd <__abi_tag+0x41>
 3cd:	00 00                	add    %al,(%rax)
 3cf:	00 d1                	add    %dl,%cl
 3d1:	65 ce                	gs (bad) 
 3d3:	6d                   	insl   (%dx),%es:(%rdi)

Disassembly of section .dynsym:

00000000000003d8 <.dynsym>:
	...
 3f0:	10 00                	adc    %al,(%rax)
 3f2:	00 00                	add    %al,(%rax)
 3f4:	12 00                	adc    (%rax),%al
	...
 406:	00 00                	add    %al,(%rax)
 408:	43 00 00             	rex.XB add %al,(%r8)
 40b:	00 20                	add    %ah,(%rax)
	...
 41d:	00 00                	add    %al,(%rax)
 41f:	00 5f 00             	add    %bl,0x0(%rdi)
 422:	00 00                	add    %al,(%rax)
 424:	20 00                	and    %al,(%rax)
	...
 436:	00 00                	add    %al,(%rax)
 438:	6e                   	outsb  %ds:(%rsi),(%dx)
 439:	00 00                	add    %al,(%rax)
 43b:	00 20                	add    %ah,(%rax)
	...
 44d:	00 00                	add    %al,(%rax)
 44f:	00 01                	add    %al,(%rcx)
 451:	00 00                	add    %al,(%rax)
 453:	00 22                	add    %ah,(%rdx)
	...

Disassembly of section .dynstr:

0000000000000468 <.dynstr>:
 468:	00 5f 5f             	add    %bl,0x5f(%rdi)
 46b:	63 78 61             	movsxd 0x61(%rax),%edi
 46e:	5f                   	pop    %rdi
 46f:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 475:	7a 65                	jp     4dc <__abi_tag+0x150>
 477:	00 5f 5f             	add    %bl,0x5f(%rdi)
 47a:	6c                   	insb   (%dx),%es:(%rdi)
 47b:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 482:	72 74                	jb     4f8 <__abi_tag+0x16c>
 484:	5f                   	pop    %rdi
 485:	6d                   	insl   (%dx),%es:(%rdi)
 486:	61                   	(bad)  
 487:	69 6e 00 6c 69 62 63 	imul   $0x6362696c,0x0(%rsi),%ebp
 48e:	2e 73 6f             	jae,pn 500 <__abi_tag+0x174>
 491:	2e 36 00 47 4c       	cs ss add %al,0x4c(%rdi)
 496:	49                   	rex.WB
 497:	42                   	rex.X
 498:	43 5f                	rex.XB pop %r15
 49a:	32 2e                	xor    (%rsi),%ch
 49c:	32 2e                	xor    (%rsi),%ch
 49e:	35 00 47 4c 49       	xor    $0x494c4700,%eax
 4a3:	42                   	rex.X
 4a4:	43 5f                	rex.XB pop %r15
 4a6:	32 2e                	xor    (%rsi),%ch
 4a8:	33 34 00             	xor    (%rax,%rax,1),%esi
 4ab:	5f                   	pop    %rdi
 4ac:	49 54                	rex.WB push %r12
 4ae:	4d 5f                	rex.WRB pop %r15
 4b0:	64 65 72 65          	fs gs jb 519 <__abi_tag+0x18d>
 4b4:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 4bb:	4d 
 4bc:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 4be:	6f                   	outsl  %ds:(%rsi),(%dx)
 4bf:	6e                   	outsb  %ds:(%rsi),(%dx)
 4c0:	65 54                	gs push %rsp
 4c2:	61                   	(bad)  
 4c3:	62                   	(bad)  
 4c4:	6c                   	insb   (%dx),%es:(%rdi)
 4c5:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 4c9:	67 6d                	insl   (%dx),%es:(%edi)
 4cb:	6f                   	outsl  %ds:(%rsi),(%dx)
 4cc:	6e                   	outsb  %ds:(%rsi),(%dx)
 4cd:	5f                   	pop    %rdi
 4ce:	73 74                	jae    544 <__abi_tag+0x1b8>
 4d0:	61                   	(bad)  
 4d1:	72 74                	jb     547 <__abi_tag+0x1bb>
 4d3:	5f                   	pop    %rdi
 4d4:	5f                   	pop    %rdi
 4d5:	00 5f 49             	add    %bl,0x49(%rdi)
 4d8:	54                   	push   %rsp
 4d9:	4d 5f                	rex.WRB pop %r15
 4db:	72 65                	jb     542 <__abi_tag+0x1b6>
 4dd:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 4e4:	4d 
 4e5:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 4e7:	6f                   	outsl  %ds:(%rsi),(%dx)
 4e8:	6e                   	outsb  %ds:(%rsi),(%dx)
 4e9:	65 54                	gs push %rsp
 4eb:	61                   	(bad)  
 4ec:	62                   	.byte 0x62
 4ed:	6c                   	insb   (%dx),%es:(%rdi)
 4ee:	65                   	gs
	...

Disassembly of section .gnu.version:

00000000000004f0 <.gnu.version>:
 4f0:	00 00                	add    %al,(%rax)
 4f2:	02 00                	add    (%rax),%al
 4f4:	01 00                	add    %eax,(%rax)
 4f6:	01 00                	add    %eax,(%rax)
 4f8:	01 00                	add    %eax,(%rax)
 4fa:	03 00                	add    (%rax),%eax

Disassembly of section .gnu.version_r:

0000000000000500 <.gnu.version_r>:
 500:	01 00                	add    %eax,(%rax)
 502:	02 00                	add    (%rax),%al
 504:	22 00                	and    (%rax),%al
 506:	00 00                	add    %al,(%rax)
 508:	10 00                	adc    %al,(%rax)
 50a:	00 00                	add    %al,(%rax)
 50c:	00 00                	add    %al,(%rax)
 50e:	00 00                	add    %al,(%rax)
 510:	75 1a                	jne    52c <__abi_tag+0x1a0>
 512:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
 518:	2c 00                	sub    $0x0,%al
 51a:	00 00                	add    %al,(%rax)
 51c:	10 00                	adc    %al,(%rax)
 51e:	00 00                	add    %al,(%rax)
 520:	b4 91                	mov    $0x91,%ah
 522:	96                   	xchg   %eax,%esi
 523:	06                   	(bad)  
 524:	00 00                	add    %al,(%rax)
 526:	02 00                	add    (%rax),%al
 528:	38 00                	cmp    %al,(%rax)
 52a:	00 00                	add    %al,(%rax)
 52c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000000530 <.rela.dyn>:
 530:	f0 3d 00 00 00 00    	lock cmp $0x0,%eax
 536:	00 00                	add    %al,(%rax)
 538:	08 00                	or     %al,(%rax)
 53a:	00 00                	add    %al,(%rax)
 53c:	00 00                	add    %al,(%rax)
 53e:	00 00                	add    %al,(%rax)
 540:	20 11                	and    %dl,(%rcx)
 542:	00 00                	add    %al,(%rax)
 544:	00 00                	add    %al,(%rax)
 546:	00 00                	add    %al,(%rax)
 548:	f8                   	clc    
 549:	3d 00 00 00 00       	cmp    $0x0,%eax
 54e:	00 00                	add    %al,(%rax)
 550:	08 00                	or     %al,(%rax)
 552:	00 00                	add    %al,(%rax)
 554:	00 00                	add    %al,(%rax)
 556:	00 00                	add    %al,(%rax)
 558:	e0 10                	loopne 56a <__abi_tag+0x1de>
 55a:	00 00                	add    %al,(%rax)
 55c:	00 00                	add    %al,(%rax)
 55e:	00 00                	add    %al,(%rax)
 560:	08 40 00             	or     %al,0x0(%rax)
 563:	00 00                	add    %al,(%rax)
 565:	00 00                	add    %al,(%rax)
 567:	00 08                	add    %cl,(%rax)
 569:	00 00                	add    %al,(%rax)
 56b:	00 00                	add    %al,(%rax)
 56d:	00 00                	add    %al,(%rax)
 56f:	00 08                	add    %cl,(%rax)
 571:	40 00 00             	rex add %al,(%rax)
 574:	00 00                	add    %al,(%rax)
 576:	00 00                	add    %al,(%rax)
 578:	d8 3f                	fdivrs (%rdi)
 57a:	00 00                	add    %al,(%rax)
 57c:	00 00                	add    %al,(%rax)
 57e:	00 00                	add    %al,(%rax)
 580:	06                   	(bad)  
 581:	00 00                	add    %al,(%rax)
 583:	00 01                	add    %al,(%rcx)
	...
 58d:	00 00                	add    %al,(%rax)
 58f:	00 e0                	add    %ah,%al
 591:	3f                   	(bad)  
 592:	00 00                	add    %al,(%rax)
 594:	00 00                	add    %al,(%rax)
 596:	00 00                	add    %al,(%rax)
 598:	06                   	(bad)  
 599:	00 00                	add    %al,(%rax)
 59b:	00 02                	add    %al,(%rdx)
	...
 5a5:	00 00                	add    %al,(%rax)
 5a7:	00 e8                	add    %ch,%al
 5a9:	3f                   	(bad)  
 5aa:	00 00                	add    %al,(%rax)
 5ac:	00 00                	add    %al,(%rax)
 5ae:	00 00                	add    %al,(%rax)
 5b0:	06                   	(bad)  
 5b1:	00 00                	add    %al,(%rax)
 5b3:	00 03                	add    %al,(%rbx)
	...
 5bd:	00 00                	add    %al,(%rax)
 5bf:	00 f0                	add    %dh,%al
 5c1:	3f                   	(bad)  
 5c2:	00 00                	add    %al,(%rax)
 5c4:	00 00                	add    %al,(%rax)
 5c6:	00 00                	add    %al,(%rax)
 5c8:	06                   	(bad)  
 5c9:	00 00                	add    %al,(%rax)
 5cb:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 5d6:	00 00                	add    %al,(%rax)
 5d8:	f8                   	clc    
 5d9:	3f                   	(bad)  
 5da:	00 00                	add    %al,(%rax)
 5dc:	00 00                	add    %al,(%rax)
 5de:	00 00                	add    %al,(%rax)
 5e0:	06                   	(bad)  
 5e1:	00 00                	add    %al,(%rax)
 5e3:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 5e9 <__abi_tag+0x25d>
 5e9:	00 00                	add    %al,(%rax)
 5eb:	00 00                	add    %al,(%rax)
 5ed:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init:

0000000000001000 <_init>:
    1000:	f3 0f 1e fa          	endbr64 
    1004:	48 83 ec 08          	sub    $0x8,%rsp
    1008:	48 8b 05 d9 2f 00 00 	mov    0x2fd9(%rip),%rax        # 3fe8 <__gmon_start__@Base>
    100f:	48 85 c0             	test   %rax,%rax
    1012:	74 02                	je     1016 <_init+0x16>
    1014:	ff d0                	call   *%rax
    1016:	48 83 c4 08          	add    $0x8,%rsp
    101a:	c3                   	ret    

Disassembly of section .plt:

0000000000001020 <.plt>:
    1020:	ff 35 a2 2f 00 00    	push   0x2fa2(%rip)        # 3fc8 <_GLOBAL_OFFSET_TABLE_+0x8>
    1026:	f2 ff 25 a3 2f 00 00 	bnd jmp *0x2fa3(%rip)        # 3fd0 <_GLOBAL_OFFSET_TABLE_+0x10>
    102d:	0f 1f 00             	nopl   (%rax)

Disassembly of section .plt.got:

0000000000001030 <__cxa_finalize@plt>:
    1030:	f3 0f 1e fa          	endbr64 
    1034:	f2 ff 25 bd 2f 00 00 	bnd jmp *0x2fbd(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    103b:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

Disassembly of section .text:

0000000000001040 <_start>:
    1040:	f3 0f 1e fa          	endbr64 
    1044:	31 ed                	xor    %ebp,%ebp
    1046:	49 89 d1             	mov    %rdx,%r9
    1049:	5e                   	pop    %rsi
    104a:	48 89 e2             	mov    %rsp,%rdx
    104d:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    1051:	50                   	push   %rax
    1052:	54                   	push   %rsp
    1053:	45 31 c0             	xor    %r8d,%r8d
    1056:	31 c9                	xor    %ecx,%ecx
    1058:	48 8d 3d ca 00 00 00 	lea    0xca(%rip),%rdi        # 1129 <main>
    105f:	ff 15 73 2f 00 00    	call   *0x2f73(%rip)        # 3fd8 <__libc_start_main@GLIBC_2.34>
    1065:	f4                   	hlt    
    1066:	66 2e 0f 1f 84 00 00 	cs nopw 0x0(%rax,%rax,1)
    106d:	00 00 00 

0000000000001070 <deregister_tm_clones>:
    1070:	48 8d 3d 99 2f 00 00 	lea    0x2f99(%rip),%rdi        # 4010 <__TMC_END__>
    1077:	48 8d 05 92 2f 00 00 	lea    0x2f92(%rip),%rax        # 4010 <__TMC_END__>
    107e:	48 39 f8             	cmp    %rdi,%rax
    1081:	74 15                	je     1098 <deregister_tm_clones+0x28>
    1083:	48 8b 05 56 2f 00 00 	mov    0x2f56(%rip),%rax        # 3fe0 <_ITM_deregisterTMCloneTable@Base>
    108a:	48 85 c0             	test   %rax,%rax
    108d:	74 09                	je     1098 <deregister_tm_clones+0x28>
    108f:	ff e0                	jmp    *%rax
    1091:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)
    1098:	c3                   	ret    
    1099:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010a0 <register_tm_clones>:
    10a0:	48 8d 3d 69 2f 00 00 	lea    0x2f69(%rip),%rdi        # 4010 <__TMC_END__>
    10a7:	48 8d 35 62 2f 00 00 	lea    0x2f62(%rip),%rsi        # 4010 <__TMC_END__>
    10ae:	48 29 fe             	sub    %rdi,%rsi
    10b1:	48 89 f0             	mov    %rsi,%rax
    10b4:	48 c1 ee 3f          	shr    $0x3f,%rsi
    10b8:	48 c1 f8 03          	sar    $0x3,%rax
    10bc:	48 01 c6             	add    %rax,%rsi
    10bf:	48 d1 fe             	sar    %rsi
    10c2:	74 14                	je     10d8 <register_tm_clones+0x38>
    10c4:	48 8b 05 25 2f 00 00 	mov    0x2f25(%rip),%rax        # 3ff0 <_ITM_registerTMCloneTable@Base>
    10cb:	48 85 c0             	test   %rax,%rax
    10ce:	74 08                	je     10d8 <register_tm_clones+0x38>
    10d0:	ff e0                	jmp    *%rax
    10d2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    10d8:	c3                   	ret    
    10d9:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

00000000000010e0 <__do_global_dtors_aux>:
    10e0:	f3 0f 1e fa          	endbr64 
    10e4:	80 3d 25 2f 00 00 00 	cmpb   $0x0,0x2f25(%rip)        # 4010 <__TMC_END__>
    10eb:	75 2b                	jne    1118 <__do_global_dtors_aux+0x38>
    10ed:	55                   	push   %rbp
    10ee:	48 83 3d 02 2f 00 00 	cmpq   $0x0,0x2f02(%rip)        # 3ff8 <__cxa_finalize@GLIBC_2.2.5>
    10f5:	00 
    10f6:	48 89 e5             	mov    %rsp,%rbp
    10f9:	74 0c                	je     1107 <__do_global_dtors_aux+0x27>
    10fb:	48 8b 3d 06 2f 00 00 	mov    0x2f06(%rip),%rdi        # 4008 <__dso_handle>
    1102:	e8 29 ff ff ff       	call   1030 <__cxa_finalize@plt>
    1107:	e8 64 ff ff ff       	call   1070 <deregister_tm_clones>
    110c:	c6 05 fd 2e 00 00 01 	movb   $0x1,0x2efd(%rip)        # 4010 <__TMC_END__>
    1113:	5d                   	pop    %rbp
    1114:	c3                   	ret    
    1115:	0f 1f 00             	nopl   (%rax)
    1118:	c3                   	ret    
    1119:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000001120 <frame_dummy>:
    1120:	f3 0f 1e fa          	endbr64 
    1124:	e9 77 ff ff ff       	jmp    10a0 <register_tm_clones>

0000000000001129 <main>:
    1129:	f3 0f 1e fa          	endbr64 
    112d:	55                   	push   %rbp
    112e:	48 89 e5             	mov    %rsp,%rbp
    1131:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    1138:	c7 45 fc 00 00 00 00 	movl   $0x0,-0x4(%rbp)
    113f:	c7 45 f8 00 00 00 00 	movl   $0x0,-0x8(%rbp)
    1146:	eb 18                	jmp    1160 <main+0x37>
    1148:	8b 45 f8             	mov    -0x8(%rbp),%eax
    114b:	83 e0 01             	and    $0x1,%eax
    114e:	85 c0                	test   %eax,%eax
    1150:	75 06                	jne    1158 <main+0x2f>
    1152:	83 45 fc 02          	addl   $0x2,-0x4(%rbp)
    1156:	eb 04                	jmp    115c <main+0x33>
    1158:	83 45 fc 03          	addl   $0x3,-0x4(%rbp)
    115c:	83 45 f8 01          	addl   $0x1,-0x8(%rbp)
    1160:	83 7d f8 09          	cmpl   $0x9,-0x8(%rbp)
    1164:	7e e2                	jle    1148 <main+0x1f>
    1166:	8b 45 fc             	mov    -0x4(%rbp),%eax
    1169:	5d                   	pop    %rbp
    116a:	c3                   	ret    

Disassembly of section .fini:

000000000000116c <_fini>:
    116c:	f3 0f 1e fa          	endbr64 
    1170:	48 83 ec 08          	sub    $0x8,%rsp
    1174:	48 83 c4 08          	add    $0x8,%rsp
    1178:	c3                   	ret    

Disassembly of section .rodata:

0000000000002000 <_IO_stdin_used>:
    2000:	01 00                	add    %eax,(%rax)
    2002:	02 00                	add    (%rax),%al

Disassembly of section .eh_frame_hdr:

0000000000002004 <__GNU_EH_FRAME_HDR>:
    2004:	01 1b                	add    %ebx,(%rbx)
    2006:	03 3b                	add    (%rbx),%edi
    2008:	28 00                	sub    %al,(%rax)
    200a:	00 00                	add    %al,(%rax)
    200c:	04 00                	add    $0x0,%al
    200e:	00 00                	add    %al,(%rax)
    2010:	1c f0                	sbb    $0xf0,%al
    2012:	ff                   	(bad)  
    2013:	ff 5c 00 00          	lcall  *0x0(%rax,%rax,1)
    2017:	00 2c f0             	add    %ch,(%rax,%rsi,8)
    201a:	ff                   	(bad)  
    201b:	ff 84 00 00 00 3c f0 	incl   -0xfc40000(%rax,%rax,1)
    2022:	ff                   	(bad)  
    2023:	ff 44 00 00          	incl   0x0(%rax,%rax,1)
    2027:	00 25 f1 ff ff 9c    	add    %ah,-0x6300000f(%rip)        # ffffffff9d00201e <_end+0xffffffff9cffe006>
    202d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .eh_frame:

0000000000002030 <__FRAME_END__-0x90>:
    2030:	14 00                	adc    $0x0,%al
    2032:	00 00                	add    %al,(%rax)
    2034:	00 00                	add    %al,(%rax)
    2036:	00 00                	add    %al,(%rax)
    2038:	01 7a 52             	add    %edi,0x52(%rdx)
    203b:	00 01                	add    %al,(%rcx)
    203d:	78 10                	js     204f <__GNU_EH_FRAME_HDR+0x4b>
    203f:	01 1b                	add    %ebx,(%rbx)
    2041:	0c 07                	or     $0x7,%al
    2043:	08 90 01 00 00 14    	or     %dl,0x14000001(%rax)
    2049:	00 00                	add    %al,(%rax)
    204b:	00 1c 00             	add    %bl,(%rax,%rax,1)
    204e:	00 00                	add    %al,(%rax)
    2050:	f0 ef                	lock out %eax,(%dx)
    2052:	ff                   	(bad)  
    2053:	ff 26                	jmp    *(%rsi)
    2055:	00 00                	add    %al,(%rax)
    2057:	00 00                	add    %al,(%rax)
    2059:	44 07                	rex.R (bad) 
    205b:	10 00                	adc    %al,(%rax)
    205d:	00 00                	add    %al,(%rax)
    205f:	00 24 00             	add    %ah,(%rax,%rax,1)
    2062:	00 00                	add    %al,(%rax)
    2064:	34 00                	xor    $0x0,%al
    2066:	00 00                	add    %al,(%rax)
    2068:	b8 ef ff ff 10       	mov    $0x10ffffef,%eax
    206d:	00 00                	add    %al,(%rax)
    206f:	00 00                	add    %al,(%rax)
    2071:	0e                   	(bad)  
    2072:	10 46 0e             	adc    %al,0xe(%rsi)
    2075:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    2078:	0b 77 08             	or     0x8(%rdi),%esi
    207b:	80 00 3f             	addb   $0x3f,(%rax)
    207e:	1a 3a                	sbb    (%rdx),%bh
    2080:	2a 33                	sub    (%rbx),%dh
    2082:	24 22                	and    $0x22,%al
    2084:	00 00                	add    %al,(%rax)
    2086:	00 00                	add    %al,(%rax)
    2088:	14 00                	adc    $0x0,%al
    208a:	00 00                	add    %al,(%rax)
    208c:	5c                   	pop    %rsp
    208d:	00 00                	add    %al,(%rax)
    208f:	00 a0 ef ff ff 10    	add    %ah,0x10ffffef(%rax)
	...
    209d:	00 00                	add    %al,(%rax)
    209f:	00 1c 00             	add    %bl,(%rax,%rax,1)
    20a2:	00 00                	add    %al,(%rax)
    20a4:	74 00                	je     20a6 <__GNU_EH_FRAME_HDR+0xa2>
    20a6:	00 00                	add    %al,(%rax)
    20a8:	81 f0 ff ff 42 00    	xor    $0x42ffff,%eax
    20ae:	00 00                	add    %al,(%rax)
    20b0:	00 45 0e             	add    %al,0xe(%rbp)
    20b3:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
    20b9:	79 0c                	jns    20c7 <__FRAME_END__+0x7>
    20bb:	07                   	(bad)  
    20bc:	08 00                	or     %al,(%rax)
	...

00000000000020c0 <__FRAME_END__>:
    20c0:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000003df0 <__frame_dummy_init_array_entry>:
    3df0:	20 11                	and    %dl,(%rcx)
    3df2:	00 00                	add    %al,(%rax)
    3df4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000003df8 <__do_global_dtors_aux_fini_array_entry>:
    3df8:	e0 10                	loopne 3e0a <_DYNAMIC+0xa>
    3dfa:	00 00                	add    %al,(%rax)
    3dfc:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynamic:

0000000000003e00 <_DYNAMIC>:
    3e00:	01 00                	add    %eax,(%rax)
    3e02:	00 00                	add    %al,(%rax)
    3e04:	00 00                	add    %al,(%rax)
    3e06:	00 00                	add    %al,(%rax)
    3e08:	22 00                	and    (%rax),%al
    3e0a:	00 00                	add    %al,(%rax)
    3e0c:	00 00                	add    %al,(%rax)
    3e0e:	00 00                	add    %al,(%rax)
    3e10:	0c 00                	or     $0x0,%al
    3e12:	00 00                	add    %al,(%rax)
    3e14:	00 00                	add    %al,(%rax)
    3e16:	00 00                	add    %al,(%rax)
    3e18:	00 10                	add    %dl,(%rax)
    3e1a:	00 00                	add    %al,(%rax)
    3e1c:	00 00                	add    %al,(%rax)
    3e1e:	00 00                	add    %al,(%rax)
    3e20:	0d 00 00 00 00       	or     $0x0,%eax
    3e25:	00 00                	add    %al,(%rax)
    3e27:	00 6c 11 00          	add    %ch,0x0(%rcx,%rdx,1)
    3e2b:	00 00                	add    %al,(%rax)
    3e2d:	00 00                	add    %al,(%rax)
    3e2f:	00 19                	add    %bl,(%rcx)
    3e31:	00 00                	add    %al,(%rax)
    3e33:	00 00                	add    %al,(%rax)
    3e35:	00 00                	add    %al,(%rax)
    3e37:	00 f0                	add    %dh,%al
    3e39:	3d 00 00 00 00       	cmp    $0x0,%eax
    3e3e:	00 00                	add    %al,(%rax)
    3e40:	1b 00                	sbb    (%rax),%eax
    3e42:	00 00                	add    %al,(%rax)
    3e44:	00 00                	add    %al,(%rax)
    3e46:	00 00                	add    %al,(%rax)
    3e48:	08 00                	or     %al,(%rax)
    3e4a:	00 00                	add    %al,(%rax)
    3e4c:	00 00                	add    %al,(%rax)
    3e4e:	00 00                	add    %al,(%rax)
    3e50:	1a 00                	sbb    (%rax),%al
    3e52:	00 00                	add    %al,(%rax)
    3e54:	00 00                	add    %al,(%rax)
    3e56:	00 00                	add    %al,(%rax)
    3e58:	f8                   	clc    
    3e59:	3d 00 00 00 00       	cmp    $0x0,%eax
    3e5e:	00 00                	add    %al,(%rax)
    3e60:	1c 00                	sbb    $0x0,%al
    3e62:	00 00                	add    %al,(%rax)
    3e64:	00 00                	add    %al,(%rax)
    3e66:	00 00                	add    %al,(%rax)
    3e68:	08 00                	or     %al,(%rax)
    3e6a:	00 00                	add    %al,(%rax)
    3e6c:	00 00                	add    %al,(%rax)
    3e6e:	00 00                	add    %al,(%rax)
    3e70:	f5                   	cmc    
    3e71:	fe                   	(bad)  
    3e72:	ff 6f 00             	ljmp   *0x0(%rdi)
    3e75:	00 00                	add    %al,(%rax)
    3e77:	00 b0 03 00 00 00    	add    %dh,0x3(%rax)
    3e7d:	00 00                	add    %al,(%rax)
    3e7f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 3e85 <_DYNAMIC+0x85>
    3e85:	00 00                	add    %al,(%rax)
    3e87:	00 68 04             	add    %ch,0x4(%rax)
    3e8a:	00 00                	add    %al,(%rax)
    3e8c:	00 00                	add    %al,(%rax)
    3e8e:	00 00                	add    %al,(%rax)
    3e90:	06                   	(bad)  
    3e91:	00 00                	add    %al,(%rax)
    3e93:	00 00                	add    %al,(%rax)
    3e95:	00 00                	add    %al,(%rax)
    3e97:	00 d8                	add    %bl,%al
    3e99:	03 00                	add    (%rax),%eax
    3e9b:	00 00                	add    %al,(%rax)
    3e9d:	00 00                	add    %al,(%rax)
    3e9f:	00 0a                	add    %cl,(%rdx)
    3ea1:	00 00                	add    %al,(%rax)
    3ea3:	00 00                	add    %al,(%rax)
    3ea5:	00 00                	add    %al,(%rax)
    3ea7:	00 88 00 00 00 00    	add    %cl,0x0(%rax)
    3ead:	00 00                	add    %al,(%rax)
    3eaf:	00 0b                	add    %cl,(%rbx)
    3eb1:	00 00                	add    %al,(%rax)
    3eb3:	00 00                	add    %al,(%rax)
    3eb5:	00 00                	add    %al,(%rax)
    3eb7:	00 18                	add    %bl,(%rax)
    3eb9:	00 00                	add    %al,(%rax)
    3ebb:	00 00                	add    %al,(%rax)
    3ebd:	00 00                	add    %al,(%rax)
    3ebf:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 3ec5 <_DYNAMIC+0xc5>
	...
    3ecd:	00 00                	add    %al,(%rax)
    3ecf:	00 03                	add    %al,(%rbx)
    3ed1:	00 00                	add    %al,(%rax)
    3ed3:	00 00                	add    %al,(%rax)
    3ed5:	00 00                	add    %al,(%rax)
    3ed7:	00 c0                	add    %al,%al
    3ed9:	3f                   	(bad)  
    3eda:	00 00                	add    %al,(%rax)
    3edc:	00 00                	add    %al,(%rax)
    3ede:	00 00                	add    %al,(%rax)
    3ee0:	07                   	(bad)  
    3ee1:	00 00                	add    %al,(%rax)
    3ee3:	00 00                	add    %al,(%rax)
    3ee5:	00 00                	add    %al,(%rax)
    3ee7:	00 30                	add    %dh,(%rax)
    3ee9:	05 00 00 00 00       	add    $0x0,%eax
    3eee:	00 00                	add    %al,(%rax)
    3ef0:	08 00                	or     %al,(%rax)
    3ef2:	00 00                	add    %al,(%rax)
    3ef4:	00 00                	add    %al,(%rax)
    3ef6:	00 00                	add    %al,(%rax)
    3ef8:	c0 00 00             	rolb   $0x0,(%rax)
    3efb:	00 00                	add    %al,(%rax)
    3efd:	00 00                	add    %al,(%rax)
    3eff:	00 09                	add    %cl,(%rcx)
    3f01:	00 00                	add    %al,(%rax)
    3f03:	00 00                	add    %al,(%rax)
    3f05:	00 00                	add    %al,(%rax)
    3f07:	00 18                	add    %bl,(%rax)
    3f09:	00 00                	add    %al,(%rax)
    3f0b:	00 00                	add    %al,(%rax)
    3f0d:	00 00                	add    %al,(%rax)
    3f0f:	00 1e                	add    %bl,(%rsi)
    3f11:	00 00                	add    %al,(%rax)
    3f13:	00 00                	add    %al,(%rax)
    3f15:	00 00                	add    %al,(%rax)
    3f17:	00 08                	add    %cl,(%rax)
    3f19:	00 00                	add    %al,(%rax)
    3f1b:	00 00                	add    %al,(%rax)
    3f1d:	00 00                	add    %al,(%rax)
    3f1f:	00 fb                	add    %bh,%bl
    3f21:	ff                   	(bad)  
    3f22:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f25:	00 00                	add    %al,(%rax)
    3f27:	00 01                	add    %al,(%rcx)
    3f29:	00 00                	add    %al,(%rax)
    3f2b:	08 00                	or     %al,(%rax)
    3f2d:	00 00                	add    %al,(%rax)
    3f2f:	00 fe                	add    %bh,%dh
    3f31:	ff                   	(bad)  
    3f32:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f35:	00 00                	add    %al,(%rax)
    3f37:	00 00                	add    %al,(%rax)
    3f39:	05 00 00 00 00       	add    $0x0,%eax
    3f3e:	00 00                	add    %al,(%rax)
    3f40:	ff                   	(bad)  
    3f41:	ff                   	(bad)  
    3f42:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f45:	00 00                	add    %al,(%rax)
    3f47:	00 01                	add    %al,(%rcx)
    3f49:	00 00                	add    %al,(%rax)
    3f4b:	00 00                	add    %al,(%rax)
    3f4d:	00 00                	add    %al,(%rax)
    3f4f:	00 f0                	add    %dh,%al
    3f51:	ff                   	(bad)  
    3f52:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f55:	00 00                	add    %al,(%rax)
    3f57:	00 f0                	add    %dh,%al
    3f59:	04 00                	add    $0x0,%al
    3f5b:	00 00                	add    %al,(%rax)
    3f5d:	00 00                	add    %al,(%rax)
    3f5f:	00 f9                	add    %bh,%cl
    3f61:	ff                   	(bad)  
    3f62:	ff 6f 00             	ljmp   *0x0(%rdi)
    3f65:	00 00                	add    %al,(%rax)
    3f67:	00 03                	add    %al,(%rbx)
	...

Disassembly of section .got:

0000000000003fc0 <_GLOBAL_OFFSET_TABLE_>:
    3fc0:	00 3e                	add    %bh,(%rsi)
	...

Disassembly of section .data:

0000000000004000 <__data_start>:
	...

0000000000004008 <__dso_handle>:
    4008:	08 40 00             	or     %al,0x0(%rax)
    400b:	00 00                	add    %al,(%rax)
    400d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

0000000000004010 <completed.0>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 55 62             	sub    %dl,0x62(%rbp)
   8:	75 6e                	jne    78 <__abi_tag-0x314>
   a:	74 75                	je     81 <__abi_tag-0x30b>
   c:	20 31                	and    %dh,(%rcx)
   e:	31 2e                	xor    %ebp,(%rsi)
  10:	33 2e                	xor    (%rsi),%ebp
  12:	30 2d 31 75 62 75    	xor    %ch,0x75627531(%rip)        # 75627549 <_end+0x75623531>
  18:	6e                   	outsb  %ds:(%rsi),(%dx)
  19:	74 75                	je     90 <__abi_tag-0x2fc>
  1b:	31 7e 32             	xor    %edi,0x32(%rsi)
  1e:	32 2e                	xor    (%rsi),%ch
  20:	30 34 29             	xor    %dh,(%rcx,%rbp,1)
  23:	20 31                	and    %dh,(%rcx)
  25:	31 2e                	xor    %ebp,(%rsi)
  27:	33 2e                	xor    (%rsi),%ebp
  29:	30 00                	xor    %al,(%rax)

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	29 11                	sub    %edx,(%rcx)
  12:	00 00                	add    %al,(%rax)
  14:	00 00                	add    %al,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	42 00 00             	rex.X add %al,(%rax)
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	a1 00 00 00 05 00 01 	movabs 0x8010005000000,%eax
   7:	08 00 
   9:	00 00                	add    %al,(%rax)
   b:	00 03                	add    %al,(%rbx)
   d:	2f                   	(bad)  
   e:	00 00                	add    %al,(%rax)
  10:	00 1d 00 00 00 00    	add    %bl,0x0(%rip)        # 16 <__abi_tag-0x376>
  16:	07                   	(bad)  
  17:	00 00                	add    %al,(%rax)
  19:	00 29                	add    %ch,(%rcx)
  1b:	11 00                	adc    %eax,(%rax)
  1d:	00 00                	add    %al,(%rax)
  1f:	00 00                	add    %al,(%rax)
  21:	00 42 00             	add    %al,0x0(%rdx)
	...
  2c:	00 00                	add    %al,(%rax)
  2e:	01 08                	add    %ecx,(%rax)
  30:	07                   	(bad)  
  31:	00 00                	add    %al,(%rax)
  33:	00 00                	add    %al,(%rax)
  35:	01 04 07             	add    %eax,(%rdi,%rax,1)
  38:	05 00 00 00 01       	add    $0x1000000,%eax
  3d:	01 08                	add    %ecx,(%rax)
  3f:	bd 00 00 00 01       	mov    $0x1000000,%ebp
  44:	02 07                	add    (%rdi),%al
  46:	12 00                	adc    (%rax),%al
  48:	00 00                	add    %al,(%rax)
  4a:	01 01                	add    %eax,(%rcx)
  4c:	06                   	(bad)  
  4d:	bf 00 00 00 01       	mov    $0x1000000,%edi
  52:	02 05 25 00 00 00    	add    0x25(%rip),%al        # 7d <__abi_tag-0x30f>
  58:	04 04                	add    $0x4,%al
  5a:	05 69 6e 74 00       	add    $0x746e69,%eax
  5f:	01 08                	add    %ecx,(%rax)
  61:	05 cb 00 00 00       	add    $0xcb,%eax
  66:	01 01                	add    %eax,(%rcx)
  68:	06                   	(bad)  
  69:	c6 00 00             	movb   $0x0,(%rax)
  6c:	00 05 d4 00 00 00    	add    %al,0xd4(%rip)        # 146 <__abi_tag-0x246>
  72:	01 03                	add    %eax,(%rbx)
  74:	05 58 00 00 00       	add    $0x58,%eax
  79:	29 11                	sub    %edx,(%rcx)
  7b:	00 00                	add    %al,(%rax)
  7d:	00 00                	add    %al,(%rax)
  7f:	00 00                	add    %al,(%rax)
  81:	42 00 00             	rex.X add %al,(%rax)
  84:	00 00                	add    %al,(%rax)
  86:	00 00                	add    %al,(%rax)
  88:	00 01                	add    %al,(%rcx)
  8a:	9c                   	pushf  
  8b:	02 69 00             	add    0x0(%rcx),%ch
  8e:	05 58 00 00 00       	add    $0x58,%eax
  93:	02 91 68 02 73 75    	add    0x75730268(%rcx),%dl
  99:	6d                   	insl   (%dx),%es:(%rdi)
  9a:	00 06                	add    %al,(%rsi)
  9c:	58                   	pop    %rax
  9d:	00 00                	add    %al,(%rax)
  9f:	00 02                	add    %al,(%rdx)
  a1:	91                   	xchg   %eax,%ecx
  a2:	6c                   	insb   (%dx),%es:(%rdi)
	...

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 24 00             	add    %esp,(%rax,%rax,1)
   3:	0b 0b                	or     (%rbx),%ecx
   5:	3e 0b 03             	ds or  (%rbx),%eax
   8:	0e                   	(bad)  
   9:	00 00                	add    %al,(%rax)
   b:	02 34 00             	add    (%rax,%rax,1),%dh
   e:	03 08                	add    (%rax),%ecx
  10:	3a 21                	cmp    (%rcx),%ah
  12:	01 3b                	add    %edi,(%rbx)
  14:	0b 39                	or     (%rcx),%edi
  16:	21 09                	and    %ecx,(%rcx)
  18:	49 13 02             	adc    (%r10),%rax
  1b:	18 00                	sbb    %al,(%rax)
  1d:	00 03                	add    %al,(%rbx)
  1f:	11 01                	adc    %eax,(%rcx)
  21:	25 0e 13 0b 03       	and    $0x30b130e,%eax
  26:	1f                   	(bad)  
  27:	1b 1f                	sbb    (%rdi),%ebx
  29:	11 01                	adc    %eax,(%rcx)
  2b:	12 07                	adc    (%rdi),%al
  2d:	10 17                	adc    %dl,(%rdi)
  2f:	00 00                	add    %al,(%rax)
  31:	04 24                	add    $0x24,%al
  33:	00 0b                	add    %cl,(%rbx)
  35:	0b 3e                	or     (%rsi),%edi
  37:	0b 03                	or     (%rbx),%eax
  39:	08 00                	or     %al,(%rax)
  3b:	00 05 2e 01 3f 19    	add    %al,0x193f012e(%rip)        # 193f016f <_end+0x193ec157>
  41:	03 0e                	add    (%rsi),%ecx
  43:	3a 0b                	cmp    (%rbx),%cl
  45:	3b 0b                	cmp    (%rbx),%ecx
  47:	39 0b                	cmp    %ecx,(%rbx)
  49:	49 13 11             	adc    (%r9),%rdx
  4c:	01 12                	add    %edx,(%rdx)
  4e:	07                   	(bad)  
  4f:	40 18 7a 19          	sbb    %dil,0x19(%rdx)
  53:	00 00                	add    %al,(%rax)
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	6d                   	insl   (%dx),%es:(%rdi)
   1:	00 00                	add    %al,(%rax)
   3:	00 05 00 08 00 2a    	add    %al,0x2a000800(%rip)        # 2a000809 <_end+0x29ffc7f1>
   9:	00 00                	add    %al,(%rax)
   b:	00 01                	add    %al,(%rcx)
   d:	01 01                	add    %eax,(%rcx)
   f:	fb                   	sti    
  10:	0e                   	(bad)  
  11:	0d 00 01 01 01       	or     $0x1010100,%eax
  16:	01 00                	add    %eax,(%rax)
  18:	00 00                	add    %al,(%rax)
  1a:	01 00                	add    %eax,(%rax)
  1c:	00 01                	add    %al,(%rcx)
  1e:	01 01                	add    %eax,(%rcx)
  20:	1f                   	(bad)  
  21:	01 07                	add    %eax,(%rdi)
  23:	00 00                	add    %al,(%rax)
  25:	00 02                	add    %al,(%rdx)
  27:	01 1f                	add    %ebx,(%rdi)
  29:	02 0f                	add    (%rdi),%cl
  2b:	02 00                	add    (%rax),%al
	...
  35:	00 05 01 00 09 02    	add    %al,0x2090001(%rip)        # 209003c <_end+0x208c024>
  3b:	29 11                	sub    %edx,(%rcx)
  3d:	00 00                	add    %al,(%rax)
  3f:	00 00                	add    %al,(%rax)
  41:	00 00                	add    %al,(%rax)
  43:	15 05 09 83 75       	adc    $0x75830905,%eax
  48:	05 0c 75 05 05       	add    $0x505750c,%eax
  4d:	74 05                	je     54 <__abi_tag-0x338>
  4f:	12 2f                	adc    (%rdi),%ch
  51:	05 0c 66 05 11       	add    $0x1105660c,%eax
  56:	4b 68 05 18 00 02    	rex.WXB push $0x2001805
  5c:	04 02                	add    $0x2,%al
  5e:	46 05 12 00 02 04    	rex.RX add $0x4020012,%eax
  64:	01 4a 05             	add    %ecx,0x5(%rdx)
  67:	0c 6d                	or     $0x6d,%al
  69:	05 01 3d 02 02       	add    $0x2023d01,%eax
  6e:	00 01                	add    %al,(%rcx)
  70:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	6c                   	insb   (%dx),%es:(%rdi)
   1:	6f                   	outsl  %ds:(%rsi),(%dx)
   2:	6e                   	outsb  %ds:(%rsi),(%dx)
   3:	67 20 75 6e          	and    %dh,0x6e(%ebp)
   7:	73 69                	jae    72 <__abi_tag-0x31a>
   9:	67 6e                	outsb  %ds:(%esi),(%dx)
   b:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  10:	74 00                	je     12 <__abi_tag-0x37a>
  12:	73 68                	jae    7c <__abi_tag-0x310>
  14:	6f                   	outsl  %ds:(%rsi),(%dx)
  15:	72 74                	jb     8b <__abi_tag-0x301>
  17:	20 75 6e             	and    %dh,0x6e(%rbp)
  1a:	73 69                	jae    85 <__abi_tag-0x307>
  1c:	67 6e                	outsb  %ds:(%esi),(%dx)
  1e:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
  23:	74 00                	je     25 <__abi_tag-0x367>
  25:	73 68                	jae    8f <__abi_tag-0x2fd>
  27:	6f                   	outsl  %ds:(%rsi),(%dx)
  28:	72 74                	jb     9e <__abi_tag-0x2ee>
  2a:	20 69 6e             	and    %ch,0x6e(%rcx)
  2d:	74 00                	je     2f <__abi_tag-0x35d>
  2f:	47                   	rex.RXB
  30:	4e 55                	rex.WRX push %rbp
  32:	20 43 31             	and    %al,0x31(%rbx)
  35:	37                   	(bad)  
  36:	20 31                	and    %dh,(%rcx)
  38:	31 2e                	xor    %ebp,(%rsi)
  3a:	33 2e                	xor    (%rsi),%ebp
  3c:	30 20                	xor    %ah,(%rax)
  3e:	2d 6d 74 75 6e       	sub    $0x6e75746d,%eax
  43:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
  49:	72 69                	jb     b4 <__abi_tag-0x2d8>
  4b:	63 20                	movsxd (%rax),%esp
  4d:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
  52:	68 3d 78 38 36       	push   $0x3638783d
  57:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
  5c:	67 20 2d 66 61 73 79 	and    %ch,0x79736166(%eip)        # 797361c9 <_end+0x797321b1>
  63:	6e                   	outsb  %ds:(%rsi),(%dx)
  64:	63 68 72             	movsxd 0x72(%rax),%ebp
  67:	6f                   	outsl  %ds:(%rsi),(%dx)
  68:	6e                   	outsb  %ds:(%rsi),(%dx)
  69:	6f                   	outsl  %ds:(%rsi),(%dx)
  6a:	75 73                	jne    df <__abi_tag-0x2ad>
  6c:	2d 75 6e 77 69       	sub    $0x69776e75,%eax
  71:	6e                   	outsb  %ds:(%rsi),(%dx)
  72:	64 2d 74 61 62 6c    	fs sub $0x6c626174,%eax
  78:	65 73 20             	gs jae 9b <__abi_tag-0x2f1>
  7b:	2d 66 73 74 61       	sub    $0x61747366,%eax
  80:	63 6b 2d             	movsxd 0x2d(%rbx),%ebp
  83:	70 72                	jo     f7 <__abi_tag-0x295>
  85:	6f                   	outsl  %ds:(%rsi),(%dx)
  86:	74 65                	je     ed <__abi_tag-0x29f>
  88:	63 74 6f 72          	movsxd 0x72(%rdi,%rbp,2),%esi
  8c:	2d 73 74 72 6f       	sub    $0x6f727473,%eax
  91:	6e                   	outsb  %ds:(%rsi),(%dx)
  92:	67 20 2d 66 73 74 61 	and    %ch,0x61747366(%eip)        # 617473ff <_end+0x617433e7>
  99:	63 6b 2d             	movsxd 0x2d(%rbx),%ebp
  9c:	63 6c 61 73          	movsxd 0x73(%rcx,%riz,2),%ebp
  a0:	68 2d 70 72 6f       	push   $0x6f72702d
  a5:	74 65                	je     10c <__abi_tag-0x280>
  a7:	63 74 69 6f          	movsxd 0x6f(%rcx,%rbp,2),%esi
  ab:	6e                   	outsb  %ds:(%rsi),(%dx)
  ac:	20 2d 66 63 66 2d    	and    %ch,0x2d666366(%rip)        # 2d666418 <_end+0x2d662400>
  b2:	70 72                	jo     126 <__abi_tag-0x266>
  b4:	6f                   	outsl  %ds:(%rsi),(%dx)
  b5:	74 65                	je     11c <__abi_tag-0x270>
  b7:	63 74 69 6f          	movsxd 0x6f(%rcx,%rbp,2),%esi
  bb:	6e                   	outsb  %ds:(%rsi),(%dx)
  bc:	00 75 6e             	add    %dh,0x6e(%rbp)
  bf:	73 69                	jae    12a <__abi_tag-0x262>
  c1:	67 6e                	outsb  %ds:(%esi),(%dx)
  c3:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
  c8:	61                   	(bad)  
  c9:	72 00                	jb     cb <__abi_tag-0x2c1>
  cb:	6c                   	insb   (%dx),%es:(%rdi)
  cc:	6f                   	outsl  %ds:(%rsi),(%dx)
  cd:	6e                   	outsb  %ds:(%rsi),(%dx)
  ce:	67 20 69 6e          	and    %ch,0x6e(%ecx)
  d2:	74 00                	je     d4 <__abi_tag-0x2b8>
  d4:	6d                   	insl   (%dx),%es:(%rdi)
  d5:	61                   	(bad)  
  d6:	69                   	.byte 0x69
  d7:	6e                   	outsb  %ds:(%rsi),(%dx)
	...

Disassembly of section .debug_line_str:

0000000000000000 <.debug_line_str>:
   0:	74 65                	je     67 <__abi_tag-0x325>
   2:	73 74                	jae    78 <__abi_tag-0x314>
   4:	2e 63 00             	cs movsxd (%rax),%eax
   7:	2f                   	(bad)  
   8:	68 6f 6d 65 2f       	push   $0x2f656d6f
   d:	77 61                	ja     70 <__abi_tag-0x31c>
   f:	6e                   	outsb  %ds:(%rsi),(%dx)
  10:	67 7a 63             	addr32 jp 76 <__abi_tag-0x316>
  13:	2f                   	(bad)  
  14:	44 6f                	rex.R outsl %ds:(%rsi),(%dx)
  16:	63 75 6d             	movsxd 0x6d(%rbp),%esi
  19:	65 6e                	outsb  %gs:(%rsi),(%dx)
  1b:	74 73                	je     90 <__abi_tag-0x2fc>
  1d:	2f                   	(bad)  
  1e:	46 6c                	rex.RX insb (%dx),%es:(%rdi)
  20:	61                   	(bad)  
  21:	6d                   	insl   (%dx),%es:(%rdi)
  22:	65 47 72 61          	gs rex.RXB jb 87 <__abi_tag-0x305>
  26:	70 68                	jo     90 <__abi_tag-0x2fc>
  28:	2d 66 6f 72 2d       	sub    $0x2d726f66,%eax
  2d:	6e                   	outsb  %ds:(%rsi),(%dx)
  2e:	65 77 2d             	gs ja  5e <__abi_tag-0x32e>
  31:	64 65 66 65 6e       	fs gs data16 outsb %gs:(%rsi),(%dx)
  36:	73 65                	jae    9d <__abi_tag-0x2ef>
  38:	2f                   	(bad)  
  39:	69 6e 74 65 6c 2d 70 	imul   $0x702d6c65,0x74(%rsi),%ebp
  40:	74 00                	je     42 <__abi_tag-0x34a>
