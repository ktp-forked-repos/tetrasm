run: tetrasm
	./tetrasm

clean:
	rm -f tetrasm *~ *.o

tetrasm.o: tetrasm.asm freebsdx64.asm
	nasm -felf64 tetrasm.asm

tetrasm: tetrasm.o
	ld -o tetrasm tetrasm.o
