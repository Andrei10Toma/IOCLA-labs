%include "../io.mac"

section .text
    global main
    extern printf

main:
    ;cele doua numere se gasesc in eax si ebx
    mov eax, 4
    mov ebx, 1
	mov ecx, eax
    ; TODO: aflati minimul
 
	sub eax, ebx
	jns minim_ebx 

	js minim_eax

minim_ebx:
   PRINTF32 `%d\n\x0`, ebx ; afiseaza minimul

    ret

minim_eax:
	mov eax, ecx
	PRINTF32 `%d\n\x0`, eax
	
	ret
