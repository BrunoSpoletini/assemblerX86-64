.text
.globl main
main:
    movl $-1, %eax  # Solo para este tamano el mov pone en 0
                    # la parte alta del registro.
    movl $2, %ecx
    imull %ecx
    # completar para que el resultado correcto como signed quede en rax
    sal $32, %rdx
    orq %rdx, %rax
    
    ret
