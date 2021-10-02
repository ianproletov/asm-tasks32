section .text
  global _start

_start:
  mov ax, 9h
  and ax, 1
  jz even
  mov eax, 4
  mov ebx, 1
  mov ecx, odd_msg
  mov edx, len2
  int 0x80
  jmp outprog

even:
  mov eax, 4
  mov ebx, 1
  mov ecx, even_msg
  mov edx, len1
  int 0x80

outprog:
  mov eax, 1
  int 0x80

section .data
even_msg db 'Even number!'
len1 equ $ - even_msg

odd_msg db 'Odd number!'
len2 equ $ - odd_msg
