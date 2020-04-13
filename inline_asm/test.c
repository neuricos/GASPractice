#include <stdio.h>

int main()
{
        int val;
        __asm__ (
                "movl $3, %%eax;"
                "addl %%eax, %%eax;"
                "movl %%eax, %0;"
                : "=r" (val)
        );
        printf("val = %d\n", val);
        return 0;
}
