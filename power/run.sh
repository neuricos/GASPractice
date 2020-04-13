#!/bin/bash

as --32 power.s -o power.o
ld -m elf_i386 power.o -o power
./power
