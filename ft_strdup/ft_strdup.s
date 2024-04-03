global ft_strdup
section .text

extern ft_strlen
extern malloc

ft_strdup:

call ft_strlen ;result in rax
cmp rax, 0
je EMPTY_STRING

mov rcx, rdi ;save argument in rcx 
mov rdi, rax ;rdi need to have allocation size for malloc call
call malloc

test rax, rax ;test if malloc return is not null
jz ALLOCATION_FAILURE

mov dl, 0
mov [rax], dl

ret

EMPTY_STRING:
ret

ALLOCATION_FAILURE:
;errno...
ret
