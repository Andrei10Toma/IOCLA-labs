%include "../io.mac"

section .data
    myString: db "Hello, World!", 0
    goodbye: db "Goodbye, World!", 0

section .text
    global main
    extern printf

main:
    mov ecx, 6                      ; N = valoarea registrului ecx
    mov eax, 2
    mov ebx, 1
    cmp eax, ebx
    jg print                        ; TODO1: eax > ebx?
    ret

print:
    PRINTF32 `%s\n\x0`, myString    
                                ; TODO2.2: afisati "Hello, World!" de N ori
	dec ecx
	jnz print
    PRINTF32 `%s\n\x0`, goodbye  ; TODO2.1: afisati "Goodbye, World!"
	
    ret
