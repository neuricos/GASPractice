#!/bin/bash

as chinese.s -o chinese.o
ld chinese.o -o chinese
./chinese
