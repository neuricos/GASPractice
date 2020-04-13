#!/bin/bash

as --32 printf.s -o printf.o
ld --dynamic-linker /lib/ld-linux.so.2 printf.o -lc -e main -m elf_i386 -o printf
./printf
