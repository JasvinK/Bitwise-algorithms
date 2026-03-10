# Binary Arithmetic and Bitwise Operations in AVR Assembly

## Overview
This project implements several low-level algorithms using **AVR assembly language** for the ATmega microcontroller architecture. The programs demonstrate fundamental operations in computer architecture, including multi-byte arithmetic and bit manipulation.

The objective of this project is to understand how computers perform arithmetic and logical operations at the **binary and register level** using assembly language.

---

## Implemented Programs

### 1. Sixteen-Bit Addition
AVR instructions operate on **8-bit registers**, so adding two 16-bit numbers requires multiple instructions.

This program performs addition of two 16-bit numbers by:
1. Adding the **lower bytes** using the `ADD` instruction.
2. Adding the **upper bytes** using the `ADC` (Add with Carry) instruction.
3. Storing the final result in designated registers.

**Registers used:**
- Operands: `(r16, r17)` and `(r18, r19)`
- Result: `(r4, r5)` where `r4` is the lower byte.

This demonstrates how larger arithmetic operations are built using smaller instructions. :contentReference[oaicite:0]{index=0}

---

### 2. Reset Rightmost Contiguous Set Bits
This program identifies the **rightmost sequence of contiguous set bits (1s)** in a byte and resets them to 0.

Example:

```
Input:  01011100
Output: 01000000
```

The algorithm:
1. Identifies the rightmost sequence of consecutive `1` bits.
2. Clears that sequence.
3. Stores the result in a destination register.

**Registers used:**
- Input: `r16`
- Result: `r1`

This exercise demonstrates **bitwise manipulation and pattern detection in binary numbers**. :contentReference[oaicite:1]{index=1}

---

### 3. Two’s Complement Conversion
Two’s complement is the standard method used by computers to represent **negative integers in binary**.

The program converts a positive number to its negative representation by:
1. Finding the **rightmost set bit (1)**.
2. Keeping that bit and all bits to the right unchanged.
3. Flipping all bits to the left of that bit.

Example:

```
+12  = 00001100
-12  = 11110100
```

**Registers used:**
- Input: `r16`
- Output: `r17`

The original value in `r16` remains unchanged.

This program demonstrates **binary number representation and signed arithmetic**. :contentReference[oaicite:2]{index=2}

---

## Technologies Used
- **Language:** AVR Assembly
- **Architecture:** ATmega AVR Microcontroller
- **Development Environment:** Microchip Studio
- **Concepts:** Binary arithmetic, bitwise operations, low-level programming

---

## Project Structure
```
binary-bitwise-algorithms/
│
├── sixteen-bit-addition.asm
├── reset-rightmost.asm
├── twos-complement.asm
└── README.md
```

---

## Concepts Demonstrated
- Multi-byte arithmetic
- Bitwise manipulation
- Binary number representation
- Two’s complement arithmetic
- Assembly-level register operations

---

## Learning Outcomes
Through this project, the following computer architecture concepts were explored:

- How processors perform arithmetic using limited register sizes
- Implementing algorithms directly in assembly language
- Understanding binary representations used in hardware
- Practicing debugging and testing programs in a microcontroller simulator

---

## Author
Jasvin Kaur  
Computer Science Student  
University of Victoria
