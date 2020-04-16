#!/bin/bash

as secret_message.s -o secret.o
ld secret.o -o secret
./secret
