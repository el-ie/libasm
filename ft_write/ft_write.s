extern __errno_location
global ft_write
section .text

;RDI, RSI, RDX
;fd, str, len
;the variables are already received in the good order to make the syscall

ft_write:

mov rax, 1 ;syscall write
syscall

cmp rax, 0
jl HANDLE_ERROR ;error: return of syscall < 0  (jump less)

ret

HANDLE_ERROR:

neg rax
mov rdi, rax
call __errno_location
mov [rax], rdi
mov rax, -1
ret

