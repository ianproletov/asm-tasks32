build:
	nasm -f elf src/$(source).asm
	ld -m elf_i386 -s -o dist/$(source) src/$(source).o
	rm src/$(source).o
buildall:
	@(for f in $$(find src -name '*.asm'); do	filename=$$(basename $$f .asm); make build source=$$filename;	done)
start:
	./dist/$(source)
