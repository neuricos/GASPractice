.macro SYS_CALL
	int $0x80
.endm

.SECTION .bss
	.lcomm buf, 24

.SECTION .text
.GLOBAL _start

_start:
	movl $buf, %edi
	movl $0xe49188e6, (%edi)
	movl $0xbde4acbb, 4(%edi)
	movl $0xb697e695, 8(%edi)
	movl $0xe891b7e8, 12(%edi)
	movl $0x87e8a2b5, 16(%edi)
	movl $0xb1b7e5aa, 20(%edi)
	movl $4, %eax
	movl $1, %ebx
	movl %edi, %ecx
	movl $24, %edx
	SYS_CALL
	movl $1, %eax
	movl $0, %ebx
	SYS_CALL
