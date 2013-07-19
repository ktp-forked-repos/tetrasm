;; learntris implementation in nasm-flavored assembly

%include 'freebsdx64.asm'

section .bss
iobuf:	 resb	64

section .text
  global _start

_start:
  sys.read  STDIN, iobuf, 64
  sys.write STDOUT, iobuf, 64
  sys.exit
