run: tetrasm
	./tetrasm

clean:
	rm -f tetrasm *~ *.o

tetrasm.o: tetrasm.s freebsdx64.asm
	nasm -felf64 tetrasm.s

tetrasm: tetrasm.o
	ld -o tetrasm tetrasm.o
