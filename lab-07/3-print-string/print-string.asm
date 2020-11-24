%include "../utils/printf32.asm"

section .data
    mystring db "This is my string", 0
    formatString db "String length is %u", 10, 0

section .text

extern puts
extern printf
global main
main:
    push ebp
    mov ebp, esp
    PRINTF32 `[PRINTF32]: %s\n[PUTS]: \x0`, mystring
    push mystring
    call puts
    add esp, 4
    mov ecx, 10
    PRINTF32 `[PRINTF32_len]: %u\n[printf_len]: \x0`, ecx
    push ecx
    push formatString
    call printf
    add esp, 8

    ; TODO: call puts on string

    leave
    ret
