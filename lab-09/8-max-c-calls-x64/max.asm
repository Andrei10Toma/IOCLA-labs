section .text

global get_max

get_max:
	push rbp
	mov rbp, rsp

	; [ebp+8] is array pointer
	; [ebp+12] is array length

	mov rbx, rdi
	mov rcx, rsi
	xor rax, rax

compare:
	cmp eax, dword[rbx+rcx*4-4]
	jge check_end
	mov eax, dword[rbx+rcx*4-4]
    mov [rdx], rcx
check_end:
	loopnz compare

	leave
	ret
