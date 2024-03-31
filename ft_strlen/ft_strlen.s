global ft_strlen
section .text

;rdi is the register containing the first argument in x64
;rax contains the return value

ft_strlen:

		;mov rax, 0
		xor rax, rax ; clean rax because it contains the return value

		test rdi, rdi ; test is the pointer of *s is not NULL
		jz NULL_POINTER

	L1:
		mov cl, [rdi] ;save the current character in cl
		inc rdi ;move the pointer of the argument to the next character

		; increment the number of character
		;add rax, 1
		inc rax

		; test if the current character is '\0' and jump back to L1 if it's not
		test cl, cl 
		jnz L1
	
	sub rax, 1 ;remove the excesss loop

	ret

	NULL_POINTER:
	mov rax, -1 ;retour de la fonction si le pointeur est NULL (bon code?)
	ret
