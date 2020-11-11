# 9) El programa que sigue, funcs, implementa void (*funcs[])() = {f1, f2, f3}. 
# Completelo para que la linea con el comentario corresponda a funcs[entero](). 
# Use el codigo mas
# eficiente.

.data 
fmt: .string "%d" 
entero: .long -100 
funcs:  .quad f1 
        .quad f2 
        .quad f3
.text 
f1: 
    movl $0, %esi;
    movq $fmt, %rdi
    call printf 
    jmp fin 
f2: 
    movl $1, %esi
    movq $fmt, %rdi
    call printf 
    jmp fin 
f3: 
    movl $2, %esi
    movq $fmt, %rdi
    call printf
    jmp fin
.global main

main:
    pushq %rbp 
    movq %rsp, %rbp
    # Leemos el entero. 
    movq $entero, %rsi 
    movq $fmt, %rdi 
    xorq %rax, %rax 
    call scanf
    xorq %rax, %rax

    movl entero, %rdx
	movq funcs(,%rdx,8), %rdx
    
    jmp *%rdx
fin:
    movq %rbp, %rsp 
    popq %rbp 
    ret