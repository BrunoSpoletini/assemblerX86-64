.text
.global fact1
fact1:
    pushq %rbp
    movq %rsp, %rbp

    cmpq $1, %rdi
    jle fact1_if
    pushq %rdi
    decq %rdi
    call fact1
    popq %rdi
    mulq %rdi
fact1_fin:
    movq %rbp, %rsp
    popq %rbp
    # sal $32, %rdx
    # orq %rdx, %rax
    ret
fact1_if:
    movq %rdi, %rax
    jmp fact1_fin

.global fact2
fact2:
    pushq %rbp
    movq %rsp, %rbp

    movq %rdi, %rcx
    movq $1, %rax
fact2_bucle:
    mulq %rcx
    loop fact2_bucle
fact2_fin:
    movq %rbp, %rsp
    popq %rbp
    # sal $32, %rdx
    # orq %rdx, %rax
    ret
    