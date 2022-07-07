.globl lshift8

lshift8:
	movsbl 4(%esp), %eax
	sall $8, %eax
    movl $0xABADCAFE, %ecx
    movl $0xDEADBEEF, %edx
	ret
