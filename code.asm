//Task 1

section .data // data section
inputNumber dd 5 // input number
result dd 0 // result of the factorial

section .text // text section  
global _start // the standard entry point for the ELF executable

_start:
mov eax, [inputNumber] // move the input number to eax
call prodecure // call the procedure
mov [result], eax // move the result to result

mov eax, 1 // system call number for sys_exit
int 0x80 // call kernel

procedure:
cmp eax, 1 // compare the input number with 1
jle end_procedure // if the input number is less than or equal to 1, then jump to end_procedure
dec eax //
call procedure // call the procedure
pop ebx // pop the return address from the stack
inc ebx // increment the return address
mul ebx // multiply the return address with the input number
ret // return from the procedure

end_procedure: // end of the procedure
mov eax, 1 // move 1 to eax
ret // return from the procedure
```

//Task 2

section .data // data section
num1 dd 10 // first number
num2 dd 20 // second number
result dd 0 // result of the addition

section .text // text section
global _start // the standard entry point for the ELF executable

_start:
mov eax, [num1] // move the first number to eax
add eax, [num2] // add the second number to eax
mov [result], eax // move the result to result
mov eax, 1 // system call number for sys_exit
xor ebx, ebx
int 0x80 // call kernel
```