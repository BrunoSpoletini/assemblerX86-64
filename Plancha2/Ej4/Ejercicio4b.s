.text
.globl main
main:
    xorq %rax,%rax
    movw $-1,%ax
    movw $2, %cx
    mulw %cx
    #completar para que el resultado correcto como unsigned short
    #quede en eax
	sal $16, %edx
    orl %edx, %eax

    ret
   