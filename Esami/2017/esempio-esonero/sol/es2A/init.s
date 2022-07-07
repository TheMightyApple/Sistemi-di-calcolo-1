.globl init

init:
	movl 4(%esp), %eax
	movb $1, (%eax)
	movl 8(%esp), %eax
	movb $40, (%eax)
	movl 12(%esp), %eax
	movb $75, (%eax)
    movl $0xDEADBEEF, %ecx
    movl $0xABADCAFE, %edx
	ret
