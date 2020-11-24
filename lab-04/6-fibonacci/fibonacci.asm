%include "../io.mac"

section .text
    global main
    extern printf

main:
    mov eax, 7       ; vrem sa aflam al N-lea numar; N = 7
	mov ebx, 0
	mov ecx, 1

	dec eax
	dec eax

	jmp det

det:
	add ebx, ecx
	mov edx, ebx
	mov ebx, ecx
	mov ecx, edx

	dec eax
	jns det

	PRINTF32 `%u\n\x0`, ebx


    ; TODO: calculati al N-lea numar fibonacci (f(0) = 0, f(1) = 1)

    ret
