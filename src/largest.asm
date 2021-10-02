section .text
  global _start

_start:
  mov ecx, [num1]
  cmp ecx, [num2]
  jg check_third_num
  mov ecx, [num2]

check_third_num:
  cmp ecx, [num3]
  jg _exit
  mov ecx, [num3]

_exit:
  mov [largest], ecx
  mov edx, len
  mov ecx, msg
  mov ebx, 1
  mov eax, 4
  int 0x80
  
  mov edx, 2
  mov ecx, largest
  mov ebx, 1
  mov eax, 4
  int 0x80

  mov eax, 1 
  int 0x80

section .data
  msg db 'The largest number is: '
  len equ $ - msg
  num1 dd '47'
  num2 dd '22'
  num3 dd '31'

segment .bss
  largest resb 2
