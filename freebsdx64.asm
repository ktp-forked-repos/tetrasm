;; syscall macros for freebsd on x64

%define ARG0 rax
%define ARG1 rdi
%define ARG2 rsi
%define ARG3 rdx

%define STDIN  0
%define STDOUT 1
%define STDERR 2

%macro sys.exit 0
  mov ARG0, 1
  mov ARG1, 0
  syscall
%endmacro

%macro sys.read 3
  mov ARG0, 3
  mov ARG1, %1
  mov ARG2, %2
  mov ARG3, %3
  syscall
%endmacro

%macro sys.write 3
  mov ARG0, 4
  mov ARG1, %1
  mov ARG2, %2
  mov ARG3, %3
  syscall
%endmacro
