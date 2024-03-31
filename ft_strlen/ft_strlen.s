global ft_strlen
section .text

ft_strlen:

		;mov rax, 0
		xor rax, rax
	L1:
		mov cl, [rdi]
		inc rdi

		;add rax, 1
		inc rax

		test cl, cl 
		jnz L1
	
	sub rax, 1

	ret
