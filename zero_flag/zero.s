.SECTION .data
	msg1:
		.asciz "Result is 0!\n"

	msg2:
		.asciz "Result is not 0!\n"

.SECTION .text
	.GLOBL _start

_start:
	movl $0xFFFFFFFF, %eax
	inc %eax
	jz zero
	pushl $msg2
	jmp print

zero:
	pushl $msg1

print:
	call printf
	addl $0x4, %esp

	pushl $0x0
	call exit
