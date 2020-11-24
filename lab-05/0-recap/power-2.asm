%include "../utils/printf32.asm"

section .text
extern printf
global main
main:
    push ebp
    mov ebp, esp

    mov eax, 211    ; to be broken down into powers of 2
    mov ebx, 1      ; stores the current power

begin:

	cmp eax, ebx

	jl end

	test eax, ebx

	jnz l1
	shl ebx, 1
	jmp begin

l1:
	PRINTF32 `%u\n\x0`, ebx
	shl ebx, 1
	jmp begin
		


    ; TODO - print the powers of 2 that generate number stored in EAX

end:

    leave
    ret
