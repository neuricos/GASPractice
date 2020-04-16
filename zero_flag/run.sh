#!/bin/bash

as --32 zero.s -o zero.o
ld --dynamic-linker /lib/ld-linux.so.2 zero.o -lc -m elf_i386 -o zero
./zero
