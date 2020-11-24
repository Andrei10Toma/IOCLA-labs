%include "../utils/printf32.asm"

%define NUM 5
   
section .text

extern printf
global main
main:
    mov ebp, esp

    ; TODO 1: replace every push by an equivalent sequence of commands (use direct addressing of memory. Hint: esp)
    mov ecx, NUM
push_nums:
    push ecx
    loop push_nums

    sub     esp, 4
    mov     dword [esp], 0

    sub     esp, 4
    mov     dword [esp], "mere"

    sub     esp, 4
    mov     dword [esp], "are "

    sub     esp, 4
    mov     dword [esp], "Ana "

    ;push 0
    ;push "mere"
    ;push "are "
    ;push "Ana "

    lea esi, [esp]
    PRINTF32 `%s\n\x0`, esi

    ; TODO 2: print the stack in "address: value" format in the range of [ESP:EBP]
    ; use PRINTF32 macro - see format above

task2:

    xor     ecx, ecx

for2:
    xor     ebx, ebx
    mov     bl, byte [esp + ecx]
    mov     eax, esp
    add     eax, ecx
    PRINTF32 `%p: %hhd\n\x0`, eax, ebx

    inc     ecx
    cmp     ecx, 36
    jl      for2


    ; TODO 3: print the string


    xor     ecx, ecx

for3:
    xor     ebx, ebx
    mov     bl, byte [esp + ecx]
    mov     eax, esp
    add     eax, ecx
    PRINTF32 `%c\x0`, ebx

    inc     ecx
    cmp     ecx, 12
    jl      for3


    PRINTF32 `\n\x0`


    ; TODO 4: print the array on the stack, element by element.


    add     ecx, 4
for4:
    
    xor     ebx, ebx
    mov     bl, byte [esp + ecx]
    mov     eax, esp
    add     eax, ecx
    PRINTF32 `%hhd \x0`, ebx

    add     ecx, 4
    cmp     ecx, 36
    jl      for4


    PRINTF32 `\n\x0`

    ; restore the previous value of the EBP (Base Pointer)
    mov esp, ebp

    ; exit without errors
    xor eax, eax
    ret
