global _start
_start:
	;; call exit()
	mov rax, 1
	mov rdi, 0
	syscall
