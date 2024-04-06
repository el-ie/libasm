global ft_strdup

extern malloc

section .text

extern ft_strlen
extern ft_strcpy

;rdi contained s

ft_strdup:

;mov rsi, rdi ;save the string pointer for later to make rdi available
mov r8, rdi ;save the string pointer for later to make rdi available

call ft_strlen

mov rdi, rax ;prepare rdi for malloc call with desired size (from strlen)
;add rdi, 100 ;for '\0'
add rdi, 1 ;for '\0'

call malloc wrt ..plt ;modifie les valeurs des registres ...


mov byte [rax], 'A'
mov byte [rax + 1], 0

mov rsi, r8
mov rdi, rax

call ft_strcpy


ret
