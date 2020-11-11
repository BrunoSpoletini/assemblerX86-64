.data 0x7fffffffe030
formato: .asciz "%s\n"

.text
.global main



main:
    #rdi = argc, rsi = argv
    cmpq $3, %rdi
    jz programa
    jmp salir

programa:
    movq $formato, %rdi
    movq $1234, %rsi
    xor %rax, %rax
    call printf
    

salir:
    ret
