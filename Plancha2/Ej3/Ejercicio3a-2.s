# 10000000 00000000 10000000 00000000 == (1 << 31) | (1 << 15)
.text
.global main
main:
    movl $1, %eax
    movl $1, %ebx
    sall $31, %eax
    sall $15, %ebx
    orl %ebx, %eax
    ret
