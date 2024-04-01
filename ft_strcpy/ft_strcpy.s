global ft_strcpy
section .text

;rsi contains src
;rdi contains dest
; on peut incrementer les pointers contenus dans les registres sans probleme car les parametres de fonctions sont copies comme en C

ft_strcpy:

	;test if one pointer is NULL
	test rdi, rdi
	jz NULL_POINTER
	test rsi, rsi
	jz NULL_POINTER

	mov rax, rdi ;save dest pointer in the return register (essential before incrementing it)

	L1:

	mov cl, [rsi] ;read current character of src
	inc rsi	 ;going to next src character

	;mov rsi, 
	mov [rdi], cl ;writing src character in the destination string
	inc rdi ;incrementing the destination string

	;test if we are not on '\0' we loop again
	test cl, cl
	jnz L1

	ret

	NULL_POINTER:
	mov rax, -1
	ret
