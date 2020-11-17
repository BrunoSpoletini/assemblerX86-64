#int solvesimple(int a, int b, int c);
#que resuelva el sistema de ecuaciones:
#a + b = c
# main(){ solbesimple(1,2,3); retunrn 0;}

.data
.text

solvesimple:   
    addq %rdi, %rsi
    addq %rsi, %rdx
    movq %rdx, %rax
    ret

.global main

main:
    movq $1, %rdi
    movq $2, %rsi
    movq $3, %rdx
    call solvesimple

ret:
    ret
