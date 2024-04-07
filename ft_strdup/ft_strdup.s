global ft_strdup

extern malloc

section .text

extern ft_strlen
extern ft_strcpy

;rdi contained s

ft_strdup:

;mov rsi, rdi ;save the string pointer for later to make rdi available
mov r15, rdi ;save the string pointer for later to make rdi available

call ft_strlen

mov rdi, rax ;prepare rdi for malloc call with desired size (from strlen)
;add rdi, 100 ;for '\0'
add rdi, 1 ;for '\0'


call malloc wrt ..plt ; carefull of malloc modifying registers ...

mov byte [rax], 0 ;avoid valgrind : conditional jump on non initialized value (during ft_strcpy call)

mov rsi, r15
mov rdi, rax

call ft_strcpy

ret
