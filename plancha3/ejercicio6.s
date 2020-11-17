#int solve(float a, float b, float c, float d, float e, float f, float *x, float *y);
#que resuelva el sistema de ecuaciones:
#ax + by = c
#dx + ey = f


.data
x: .float 10.5
y: .float 4.20



.text

solve:   
    #ax + by = c y = c - ax /b
	#dx + ey = f




    ret

.global main

prologo:
	pushq %rbp
	movq %rsp, %rbp

main:
	movq $1, %rdi	#float a
	cvtsi2ss %rdi, %xmm0 


	movq $2, %rdi  #float b
	cvtsi2ss %rdi, %xmm1 

	movq $3, %rdi  #float c
	cvtsi2ss %rdi, %xmm2


	movq $4, %rdi  #float d 
	cvtsi2ss %rdi, %xmm3

	movq $x, %rdi  #float *x
	movq $y, %rsi  #float *y

	pushq $6 #float f
	pushq $5 #float e

    call solve

epilogo:
	movq %rbp, %rsp
	popq %rbp

ret:
    ret
