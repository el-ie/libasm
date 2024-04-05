global ft_strdup
extern malloc
section .text


ft_strdup:

mov rdi, 10
call malloc wrt ..plt
ret
