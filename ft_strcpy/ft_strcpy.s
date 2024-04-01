global ft_strcpy
section .text

;rsi contains src
;rdi contains dest

ft_strcpy:

	;test if one pointer is NULL
	test rdi, rdi
	jz NULL_POINTER
	test rsi, rsi
	jz NULL_POINTER

	L1:

	mov al, [rsi]
	inc rsi	

	mov rsi, 
	;mov [rdi], [rsi]
	;copier lettre


	test al, al
	jnz L1

	ret

	NULL_POINTER:
	mov rax, -1
	ret

	section .data
	message db 'salut'

	;mov rax, 1
	;mov rdi, 1
	;rsi is already the 2th argument
	;mov rdx, 5
	;syscall
	;ret
