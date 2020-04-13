.macro SYSTEM_CALL
    int $0x80
.endm

.SECTION .data
    msg:
        .string "Hello world!\n"
    .equ msgLen, . - msg

.SECTION .text
    .GLOBL _start

_start:
    movl $0x4, %eax
    movl $0x1, %ebx
    movl $msg, %ecx
    movl $msgLen, %edx
    SYSTEM_CALL

    movl $0x1, %eax
    movl $0x0, %ebx
    SYSTEM_CALL
