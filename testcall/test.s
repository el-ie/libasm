global test
extern malloc
section .text

; pour ne pas segfault il faut soit utiliser enter puis leave soit push rbp puis le pop a la fin
; enfait ca marche avec beaucoup de registre du moment ou on fait un push et un pop ca enleve le segfault (rdi par exemple)
test:

;enter	16, 0			;reservation for 16bytes in stack
;push rbp
;push rsp

push rdi

mov rdi, 10
call malloc wrt ..plt

pop rdi

;pop rbp
;pop rsp

;leave

ret
