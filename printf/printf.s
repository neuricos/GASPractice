.SECTION .data
        format: .string "val = %d\n\0"

.SECTION .text
        .GLOBL main

main:
        pushl $0x12
        pushl $format
        call printf

        pushl $0x0
        call exit
