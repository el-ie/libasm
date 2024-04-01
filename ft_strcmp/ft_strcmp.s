global ft_strcmp
section .text

;rdi contains s1
;rsi contains s2
; on peut incrementer les pointers contenus dans les registres sans probleme car les parametres de fonctions sont copies comme en C

ft_strcmp:

	;test if one pointer is NULL
	test rdi, rdi
	jz NULL_POINTER
	test rsi, rsi
	jz NULL_POINTER

	mov rax, 0

	L1:

	mov rcx, [rdi] ;read current character of src
	inc rdi	 ;going to next src character

	mov rdx, [rsi]
	inc rsi

	test rcx, rcx ;test if rcx is '\0'
	jz TERMINATE
	
	test rdx, rdx
	jz TERMINATE

	cmp rcx, rdx
	jne L1

	sub rcx, rdx
	mov rax, rcx
	ret

	TERMINATE:
	sub rcx, rdx
	mov rax, rcx
	;mov rax, 42
	ret

	NULL_POINTER:
	mov rax, -1
	ret
