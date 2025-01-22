```assembly
section .data
    array dw 10, 20, 30, 40, 50
    length equ ($-array) / 2 ; Corrected length calculation

section .text
    global _start

_start:
    ; Calculate the sum of the array elements
    mov esi, array ; Load the address of the array into esi
    mov ecx, length ; Load the length of the array into ecx
    mov eax, 0 ; Initialize the sum to 0

loop_start:
    add ax, [esi] ; Add the current element to the sum
    add esi, 2 ; Move to the next element
    loop loop_start ; Decrement ecx and loop if ecx != 0

    ; Exit the program
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80
```