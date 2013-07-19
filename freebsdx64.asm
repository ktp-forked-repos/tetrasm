;; syscall macros for freebsd on x64

%macro exit 0
	mov rax, 1
	mov rdi, 0
	syscall
%endmacro
