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

	LOOP:

	; charge trop de characteres
	mov cl, [rdi] ;read current character of s1?
	inc rdi	 ;going to next src character

	mov dl, [rsi]
	inc rsi

	test cl, cl ;test if cl is '\0'
	jz TERMINATE
	
	test dl, dl
	jz TERMINATE

	cmp cl, dl
	je LOOP

	;LOGICAL:
	;movzx rcx, cl
	;movzx rdx, dl
	;
	;sub rcx, rdx
	;mov rax, rcx
	;ret

	;sub cl, dl
	;movzx : move the smaller register in the bigger one and zero-extend it
	;movzx rax, cl
	;ret

	TERMINATE:

	movzx rcx, cl
	movzx rdx, dl

	sub rcx, rdx
	mov rax, rcx
	ret

	;sub cl, dl
	;movzx rax, cl
	;ret

	NULL_POINTER:
	mov rax, -1
	ret
