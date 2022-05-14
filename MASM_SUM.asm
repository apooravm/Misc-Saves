format ELF

%include 'io.inc'

section .data
n dw 5
sum dw 0
section .text
global CMAIN
CMAIN;
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