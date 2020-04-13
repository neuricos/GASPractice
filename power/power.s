.SECTION .text
        .GLOBL _start

_start:
        pushl $0x3
        pushl $0x2
        call power
        addl $0x8, %esp
        pushl %eax

        pushl $0x2
        pushl $0x5
        call power
        add $0x8, %esp
        popl %ebx

        addl %eax, %ebx
        movl $0x1, %eax
        int $0x80

.type power, @function
power:
        pushl %ebp
        movl %esp, %ebp
        subl $0x4, %esp

        movl 8(%ebp), %ebx
        movl 12(%ebp), %ecx
        movl %ebx, -4(%ebp)

power_loop_start:
        cmpl $0x1, %ecx
        je end_power
        movl -4(%ebp), %eax
        imull %ebx, %eax

        movl %eax, -4(%ebp)

        decl %ecx
        jmp power_loop_start

end_power:
        movl -4(%ebp), %eax
        movl %ebp, %esp
        popl %ebp
        ret
