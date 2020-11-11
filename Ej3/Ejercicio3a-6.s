# 11111111 11111111 11111110 11111111 == -1 & (~ (1 << 8))
.text
.global main
main:
    movl $1, %eax
    movl $-1, %ebx
    sall $8, %eax
    notl %eax
    andl %ebx, %eax
    ret
    