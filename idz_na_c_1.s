	.file	"idz_na_c_1.s"
	.text
	.section	.rodata
.LC0:
	.string	"Enter n(2-100): "
.LC1:
	.string	"%d"
.LC2:
	.string	"Incorrect input, try again"
.LC3:
	.string	"Enter array A"
.LC4:
	.string	"a[%d]: "
.LC5:
	.string	"Generated array B:"
.LC6:
	.string	"b[%d]: %d\n"
	.text
	.globl	main
	.type	main, @function
main:
	endbr64
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$832, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$1, -820(%rbp)
	jmp	.L2
.L5:
	leaq	.LC0(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-832(%rbp), %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	movl	-832(%rbp), %eax
	cmpl	$1, %eax
	jle	.L3
	movl	-832(%rbp), %eax
	cmpl	$100, %eax
	jg	.L3
	movl	$0, -820(%rbp)
	jmp	.L4
.L3:
	leaq	.LC2(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
.L2:
	cmpl	$1, -820(%rbp)
	je	.L5
.L4:
	leaq	.LC3(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -828(%rbp)
	jmp	.L6
.L7:
	movl	-828(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	leaq	-816(%rbp), %rdx
	movl	-828(%rbp), %eax
	cltq
	salq	$2, %rax
	addq	%rdx, %rax
	movq	%rax, %rsi
	leaq	.LC1(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	__isoc99_scanf@PLT
	addl	$1, -828(%rbp)
.L6:
	movl	-832(%rbp), %eax
	cmpl	%eax, -828(%rbp)
	jl	.L7
	leaq	.LC5(%rip), %rax
	movq	%rax, %rdi
	call	puts@PLT
	movl	$0, -824(%rbp)
	jmp	.L8
.L9:
	movl	-824(%rbp), %eax
	cltq
	movl	-816(%rbp,%rax,4), %edx
	movl	-824(%rbp), %eax
	addl	$1, %eax
	cltq
	movl	-816(%rbp,%rax,4), %eax
	subl	%eax, %edx
	movl	-824(%rbp), %eax
	cltq
	movl	%edx, -416(%rbp,%rax,4)
	movl	-824(%rbp), %eax
	cltq
	movl	-416(%rbp,%rax,4), %edx
	movl	-824(%rbp), %eax
	movl	%eax, %esi
	leaq	.LC6(%rip), %rax
	movq	%rax, %rdi
	movl	$0, %eax
	call	printf@PLT
	addl	$1, -824(%rbp)
.L8:
	movl	-832(%rbp), %eax
	subl	$1, %eax
	cmpl	%eax, -824(%rbp)
	jl	.L9
	movl	$0, %eax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L11
	call	__stack_chk_fail@PLT
.L11:
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
