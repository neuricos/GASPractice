#!/bin/bash

as --32 cpuid.s -o cpuid.o
ld -m elf_i386 cpuid.o -o cpuid
./cpuid
