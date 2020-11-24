%include "../io.mac"

section .text
    global main
    extern printf

main:
    ;cele doua multimi se gasesc in eax si ebx
    mov eax, 139
    mov ebx, 169
	mov ecx, eax
    PRINTF32 `%u\n\x0`, eax ; afiseaza prima multime
    PRINTF32 `%u\n\x0`, ebx ; afiseaza cea de-a doua multime

l1:
    ; TODO1: reuniunea a doua multimi
	or eax, ebx
	PRINTF32 `Reuniunea este: \x0`
	PRINTF32 `%u\n\x0`, eax
l2:
    ; TODO2: adaugarea unui element in multime
	mov eax, ecx
	and eax, ebx	
l3:
	PRINTF32 `Intersectia este: \x0`
	PRINTF32 `%u\n\x0`, eax
l4:
	mov eax, ecx
	or eax, 256
	PRINTF32 `Adaugarea unui element in lista: \x0`
	PRINTF32 `%u\n\x0`, eax	
l5:
    ; TODO3: intersectia a doua multimi


    ; TODO4: complementul unei multimi
	mov eax, ecx
	not eax
	PRINTF32 `Complementul multimii din eax: \x0`
	PRINTF32 `%u\n\x0`, eax
l6:
    ; TODO5: eliminarea unui element
	mov eax, ecx
	add eax, -128
	PRINTF32 `Eliminarea unui element: \x0`
	PRINTF32 `%u\n\x0`, eax
l7:
    ; TODO6: diferenta de multimi EAX-EBX
	mov eax, ecx
	xor ebx, eax
	PRINTF32 `Diferenta dintre doua multimi: \x0`
	PRINTF32 `%u\n\x0`, eax

    xor eax, eax
    ret
