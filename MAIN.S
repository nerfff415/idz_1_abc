	.file	"4.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d"
	.text
	.globl	InputArray
	.type	InputArray, @function
InputArray:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi // Array
	mov	DWORD PTR -28[rbp], esi // countArray
	mov	DWORD PTR -4[rbp], 0
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -4[rbp] // i
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp] // Array[i]
	add	rax, rdx
	mov	rsi, rax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT // scanf("%d",&Array[i]);
	add	DWORD PTR -4[rbp], 1 // i++
.L2:
	mov	eax, DWORD PTR -4[rbp] 
	cmp	eax, DWORD PTR -28[rbp] // i < countArray ?
	jl	.L3
	nop
	leave
	ret
	.size	InputArray, .-InputArray
	.globl	FormNewArray
	.type	FormNewArray, @function
FormNewArray:
	push	rbp
	mov	rbp, rsp
	mov	QWORD PTR -24[rbp], rdi // Array
	mov	QWORD PTR -32[rbp], rsi // Brray
	mov	DWORD PTR -36[rbp], edx // countArray
	mov	QWORD PTR -48[rbp], rcx // countBrray
	mov	DWORD PTR -4[rbp], 0
	jmp	.L6
.L8:
	mov	eax, DWORD PTR -4[rbp] // i
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	test	eax, eax
	jle	.L7 // Array[i] > 0 ?
	mov	rax, QWORD PTR -48[rbp]
	mov	eax, DWORD PTR [rax]
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -32[rbp] //Brray
	add	rdx, rax
	mov	eax, DWORD PTR -4[rbp]
	mov	DWORD PTR [rdx], eax
	mov	rax, QWORD PTR -48[rbp]
	mov	eax, DWORD PTR [rax]
	lea	edx, 1[rax] // (*countBrray)++;
	mov	rax, QWORD PTR -48[rbp]
	mov	DWORD PTR [rax], edx
.L7:
	add	DWORD PTR -4[rbp], 1 // i++
.L6:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -36[rbp] // i < countArray ?
	jl	.L8
	nop
	pop	rbp
	ret
	.size	FormNewArray, .-FormNewArray
	.section	.rodata
	.align 8
.LC1:
	.string	"\320\241\321\204\320\276\321\200\320\274\320\270\321\200\320\276\320\262\320\260\320\275\320\275\321\213\320\271 \320\274\320\260\321\201\321\201\320\270\320\262 B: "
.LC2:
	.string	"%d "
	.text
	.globl	OutputArray
	.type	OutputArray, @function
OutputArray:
	push	rbp
	mov	rbp, rsp
	sub	rsp, 32
	mov	QWORD PTR -24[rbp], rdi
	mov	DWORD PTR -28[rbp], esi
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	printf@PLT // printf("Сформированный массив B: ");
	mov	DWORD PTR -4[rbp], 0
	jmp	.L11
.L12:
	mov	eax, DWORD PTR -4[rbp] // i
	cdqe
	lea	rdx, 0[0+rax*4]
	mov	rax, QWORD PTR -24[rbp] // Array[i]
	add	rax, rdx
	mov	eax, DWORD PTR [rax]
	add	eax, 1
	mov	esi, eax
	lea	rdi, .LC2[rip] // "%d"
	mov	eax, 0
	call	printf@PLT // printf("%d ", Array[i] + 1);
	add	DWORD PTR -4[rbp], 1
.L11:
	mov	eax, DWORD PTR -4[rbp]
	cmp	eax, DWORD PTR -28[rbp] // i < countArray ?
	jl	.L12
	mov	edi, 10
	call	putchar@PLT
	nop
	leave
	ret
	.size	OutputArray, .-OutputArray
	.section	.rodata
	.align 8
.LC3:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\264\320\273\320\270\320\275\321\203 \320\274\320\260\321\201\321\201\320\270\320\262\320\260 \320\220: "
.LC4:
	.string	"\320\234\320\260\321\201\321\201\320\270\320\262 \320\220 \320\277\321\203\321\201\321\202!"
	.align 8
.LC5:
	.string	"\320\235\320\265\320\262\320\265\321\200\320\275\320\276\320\265 \320\272\320\276\320\273\320\270\321\207\320\265\321\201\321\202\320\262\320\276 \321\215\320\273\320\265\320\274\320\265\320\275\321\202\320\276\320\262 \320\274\320\260\321\201\321\201\320\270\320\262\320\260 \320\220!"
	.align 8
.LC6:
	.string	"\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \320\274\320\260\321\201\321\201\320\270\320\262 \320\220: "
	.text
	.globl	main
	.type	main, @function
main:
	push	rbp
	mov	rbp, rsp
	lea	r11, -77824[rsp]
.LPSRL0:
	sub	rsp, 4096
	or	DWORD PTR [rsp], 0
	cmp	rsp, r11
	jne	.LPSRL0
	sub	rsp, 2208
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	lea	rdi, .LC3[rip]
	mov	eax, 0
	call	printf@PLT // printf("Введите длину массива А: ");
	lea	rax, -80024[rbp]
	mov	rsi, rax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	__isoc99_scanf@PLT // scanf("%d", &countA);
	mov	eax, DWORD PTR -80024[rbp] // countA
	test	eax, eax
	jne	.L15
	lea	rdi, .LC4[rip]
	call	puts@PLT // printf("Массив А пуст!\n");
	mov	eax, 0
	jmp	.L19
.L15:
	mov	eax, DWORD PTR -80024[rbp] // count A
	test	eax, eax
	js	.L17
	mov	eax, DWORD PTR -80024[rbp] // count A
	cmp	eax, 10000  
	jle	.L18
.L17:
	lea	rdi, .LC5[rip]
	call	puts@PLT // printf("Неверное количество элементов массива А!\n");
	mov	eax, 0
	jmp	.L19
.L18:
	lea	rdi, .LC6[rip]
	mov	eax, 0
	call	printf@PLT // printf("Введите массив А: ");
	mov	edx, DWORD PTR -80024[rbp] //countA
	lea	rax, -80016[rbp] // A
	mov	esi, edx
	mov	rdi, rax
	call	InputArray
	mov	edx, DWORD PTR -80024[rbp] // &countB
	lea	rcx, -80020[rbp] // countA
	lea	rsi, -40016[rbp] // B
	lea	rax, -80016[rbp] // A
	mov	rdi, rax
	call	FormNewArray
	mov	edx, DWORD PTR -80020[rbp] // countB
	lea	rax, -40016[rbp] // B
	mov	esi, edx
	mov	rdi, rax
	call	OutputArray
	mov	eax, 0
.L19:
	mov	rcx, QWORD PTR -8[rbp]
	xor	rcx, QWORD PTR fs:40
	je	.L20
	call	__stack_chk_fail@PLT
.L20:
	leave
	ret
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
