section .text
  global _start

_start:
  mov al, 5
  mov bl, 3
  or al, bl
  add al, '0'

  mov [res], al
  mov edx, 1
  mov ecx, res
  mov ebx, 1
  mov eax, 4
  int 0x80

  mov eax, 1
  int 0x80

section .bss
  res resb 1

