# 11111111 11111111 11111111 00000000 == -1 & ~255
.text
.global main
main:
    movl $-1, %eax
    movl $255, %ebx
    notl %ebx
    andl %ebx, %eax
    ret
