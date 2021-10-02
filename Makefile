build:
	nasm -f elf src/$(source).asm
	ld -m elf_i386 -s -o dist/$(source) src/$(source).o
	rm src/$(source).o
start:
	./dist/$(source)
