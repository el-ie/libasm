global ft_strdup

extern malloc
extern __errno_location

extern ft_strlen
extern ft_strcpy

section .text


;rdi contained s

ft_strdup:

mov r15, rdi ;save the string pointer for later to make rdi available, I chose to save rdi in a non volatile register rather then using push and pop for optimization purposes
; (alternatively) push rdi

call ft_strlen

mov rdi, rax ;prepare rdi for malloc call with desired size (from strlen)
;add rdi, 100 ;for '\0'
add rdi, 1 ;for '\0'


call malloc wrt ..plt ; carefull of malloc modifying registers ...
cmp rax, 0
je MALLOC_ERROR

mov byte [rax], 0 ;avoid valgrind : conditional jump on non initialized value (during ft_strcpy call)

mov rsi, r15
; (alternatively) pop rsi

mov rdi, rax

call ft_strcpy

ret

MALLOC_ERROR:
; ...
ret
