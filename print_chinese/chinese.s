.SECTION .rodata
	slogan: .string "中国将立于世界之巅\n"
	.equ sloganLen, . - slogan

.SECTION .text

.GLOBAL _start

_start:
	movl $4, %eax
	movl $1, %ebx
	movl $slogan, %ecx
	movl $sloganLen, %edx
	int $0x80

	movl $1, %eax
	movl $0, %ebx
	int $0x80
