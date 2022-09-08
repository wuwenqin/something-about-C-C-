	.file	"main.cpp"
	.text
	.globl	_Z15beforeMainToRunv
	.def	_Z15beforeMainToRunv;	.scl	2;	.type	32;	.endef
	.seh_proc	_Z15beforeMainToRunv
_Z15beforeMainToRunv:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	leaq	_ZZ15beforeMainToRunvE12__FUNCTION__(%rip), %rcx
	call	puts
	nop
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section	.ctors,"w"
	.align 8
	.quad	_Z15beforeMainToRunv
	.def	__main;	.scl	2;	.type	32;	.endef
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbp
	.seh_pushreg	%rbp
	movq	%rsp, %rbp
	.seh_setframe	%rbp, 0
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, 16(%rbp)
	movq	%rdx, 24(%rbp)
	call	__main
	leaq	_ZZ4mainE12__FUNCTION__(%rip), %rcx
	call	puts
	movl	$0, %eax
	addq	$32, %rsp
	popq	%rbp
	ret
	.seh_endproc
	.section .rdata,"dr"
	.align 16
_ZZ15beforeMainToRunvE12__FUNCTION__:
	.ascii "beforeMainToRun\0"
_ZZ4mainE12__FUNCTION__:
	.ascii "main\0"
	.ident	"GCC: (x86_64-posix-sjlj-rev0, Built by MinGW-W64 project) 8.1.0"
	.def	puts;	.scl	2;	.type	32;	.endef
