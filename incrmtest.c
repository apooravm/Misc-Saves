#include <stdio.h>

int main()
{
	int sum = 0;
	int n = 89;
	for(int i=0; i<n; i++)
	{
		sum += i;
	}
	printf("%d\n", sum);
	return 0;
}

;format ELF

%include 'io.inc'

section .data
n dw 89
sum dw 0
section .text
global CMAIN
CMAIN:
mov ebp, esp; for correct debugging
xor eax, eax
xor ebx, ebx
xor ecx, ecx
xor edx, edx
;To Calculate
;sum = 1+2+3+4+...+n = n*(n+1)/2
mov ax, [n]
mov bx, ax
inc bx
mul bx
mov bx, 2
div bx
mov [sum], ax
xor eax, eax
ret 