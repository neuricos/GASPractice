#!/bin/bash

as helloworld.s -o helloworld.o
ld helloworld.o -o helloworld
./helloworld
