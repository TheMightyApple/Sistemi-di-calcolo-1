	.file	"es3A.c"
	.text
	.globl	piufreq
	.type	piufreq, @function
piufreq:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	pushl	%edi
	.cfi_def_cfa_offset 12
	.cfi_offset 7, -12
	pushl	%esi
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	pushl	%ebx
	.cfi_def_cfa_offset 20
	.cfi_offset 3, -20
	subl	$28, %esp
	.cfi_def_cfa_offset 48
	movl	48(%esp), %esi
	movzbl	(%esi), %ebp
	movl	%ebp, %eax
	testb	%al, %al
	je	.L2
	movl	%esi, %ebx
	movl	$0, %edi
.L4:
	movl	%esi, 4(%esp)
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	conta
	cmpl	%edi, %eax
	jbe	.L3
	movzbl	(%ebx), %ebp
	movl	%esi, 4(%esp)
	movl	%ebp, %eax
	movsbl	%al, %eax
	movl	%eax, (%esp)
	call	conta
	movl	%eax, %edi
.L3:
	addl	$1, %ebx
	movzbl	(%ebx), %eax
	testb	%al, %al
	jne	.L4
.L2:
	movl	%ebp, %eax
	addl	$28, %esp
	.cfi_def_cfa_offset 20
	popl	%ebx
	.cfi_restore 3
	.cfi_def_cfa_offset 16
	popl	%esi
	.cfi_restore 6
	.cfi_def_cfa_offset 12
	popl	%edi
	.cfi_restore 7
	.cfi_def_cfa_offset 8
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE0:
	.size	piufreq, .-piufreq
	.ident	"GCC: (Ubuntu 4.8.4-2ubuntu1~14.04) 4.8.4"
	.section	.note.GNU-stack,"",@progbits
