# Assembly Off-by-One Error

This repository demonstrates a common off-by-one error in assembly language code that calculates the sum of elements in an array.  The error arises from an incorrect loop termination condition, potentially leading to memory access violations.

## Bug Description

The `bug.asm` file contains assembly code that attempts to sum the elements of a word array.  However, a subtle off-by-one error causes the loop to iterate one time too many, resulting in an attempt to access memory beyond the array bounds.

## Solution

The `bugSolution.asm` file provides a corrected version of the code, addressing the off-by-one error. The loop is modified to correctly terminate after processing all array elements, preventing memory access violations.

## How to run

Assemble and link the code using NASM and ld (or your preferred assembler/linker).