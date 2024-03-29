%include "../utils/printf32.asm"

%define NUM_FIBO 10

section .text

extern printf
global main
main:
    mov ebp, esp

    ; TODO - replace below instruction with the algorithm for the Fibonacci sequence
    sub esp, NUM_FIBO * 4
    mov ecx, NUM_FIBO
    mov ebx, 0
    mov edx, 1
    push ebx
    push edx
    dec ecx
    dec ecx
fibo:
    add ebx, edx
    mov eax, ebx
    mov ebx, edx
    mov edx, eax
    push eax
    dec ecx
    cmp ecx, 0
    jne fibo
    mov ecx, NUM_FIBO
print:
    mov eax, dword [esp + (ecx - 1) * 4]
    PRINTF32 `%d \x0`, eax
    dec ecx
    cmp ecx, 0
    ja print

    PRINTF32 `\n\x0`
    mov esp, ebp
    xor eax, eax
    ret
