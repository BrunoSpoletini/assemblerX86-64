# 11111111 11111111 11111111 11111111 == 0 - 1
.text
.global main
main:
    xorl %eax, %eax
    movl $-1, %ebx
    addl %ebx, %eax
    ret
    