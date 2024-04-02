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

	xor rax, rax
	xor rcx, rcx ;cl with be used to access the lower 8 bits
	xor rdx, rdx ;dl with be used to access the lower 8 bits

	L1:

	mov cl, [rdi] ;read current character of s1
	inc rdi	 ;going to next s1 character

	mov dl, [rsi]
	inc rsi

	test cl, cl ;test if cl is '\0'
	jz TERMINATE
	
	test dl, dl
	jz TERMINATE

	cmp cl, dl ;compare the current characters
	je L1

	TERMINATE:

	sub rcx, rdx ;difference between the two characters
	mov rax, rcx
	ret

	NULL_POINTER:
	mov rax, -1
	ret
