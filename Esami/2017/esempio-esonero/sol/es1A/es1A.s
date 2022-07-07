#short lshift8(char);
#void replica(const char* s, short* v) {

.globl replica

replica:    
    pushl %ebx
    pushl %esi
    subl $4, %esp
    movl 16(%esp), %esi # esi <-> s
    movl 20(%esp), %ebx # ebx <-> v
L:
    movb (%esi), %al
    cmpb $0, %al        # if (*s == 0) 
    je E                # goto E;
    cmpb $97, %al
    setl %cl            #`c1 <-> cl, char c1 = *s < 97;
    cmpb $122, %al
    setg %ch            # c2 <-> ch, char c2 = *s > 122;
    orb %ch, %cl        # c1 = c1 | c2;
    cmpb $0, %cl        # if (c1 == 0) 
    je F                # goto F;
    movw $45, (%ebx)    # *v = 45;
    jmp O               # goto O:
F:
    movsbw %al, %ax
    movw %ax, (%ebx)    # *v = *s;
O:
    movsbl %al, %eax
    movl %eax, (%esp)
    call lshift8        # short r = lshift8(*s);
    addw %ax, (%ebx)    # *v = *v + r;
    incl %esi           # s++;
    addl $2, %ebx       # v++;
    jmp L               # goto L;
E:
    addl $4, %esp
    popl %esi
    popl %ebx
    ret
