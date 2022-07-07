# void init(char*, char*, char*);
# int weird(char* d)

.globl weird

weird:
    subl $24, %esp
    leal 12(%esp), %eax # &a
    movl %eax, (%esp)
    leal 16(%esp), %eax # &b
    movl %eax, 4(%esp)
    leal 20(%esp), %eax # &c
    movl %eax, 8(%esp)
    call init           # init(&a, &b, &c);
    movb 12(%esp), %al  # r1 = a
    movl 28(%esp), %ecx # d <-> ecx
    addb (%ecx), %al    # r1 = r1 + *d
    movb 20(%esp), %dl  # r2 = c
    salb $1, %dl        # r2 = r2 * 2
    subb 16(%esp), %dl  # r2 = r2 - b
    cmpb %dl, %al
    setl %al            # r1 < r2
    movsbl %al, %eax
    addl $24, %esp
    ret
