section .data
    before_format db "before %s", 13, 10, 0
    after_format db "after %s", 13, 10, 0
    mystring db "abCdeFghij", 0
    frmt db "%s", 10, 0

section .text

extern printf
global main

toupper:
    push ebp
    mov ebp, esp
    mov eax, [ebp + 8]
loop:
    mov bl, byte[eax]
    test bl, bl
    je out
    cmp ebx, 'a'
    jl continue
    cmp ebx, 'z'
    jg continue
update_char:
    sub bl, 0x20
    mov byte[eax], bl
continue:
    inc eax
    jmp loop

    ; TODO
out:
    leave
    ret

main:
    push ebp
    mov ebp, esp

    push mystring
    push before_format
    call printf
    add esp, 8

break:
    push mystring
    call toupper
    add esp, 4

    push mystring
    push after_format
    call printf
    add esp, 8

    leave
    ret
