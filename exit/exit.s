.SECTION .data
    .equ LINUX_SYSCALL, 0x80

.SECTION .text
    .GLOBL _start

_start:
    movl $0x1, %eax
    movl $0x0, %ebx
    int $LINUX_SYSCALL
