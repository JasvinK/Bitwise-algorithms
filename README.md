# Binary Arithmetic and Bitwise Operations (AVR Assembly)

## Overview
This project implements several binary arithmetic and bit manipulation algorithms using **AVR Assembly**. The programs demonstrate how low-level operations such as multi-byte addition, bit pattern manipulation, and two’s complement conversion are implemented using microcontroller registers.

## Programs Included

### 1. Sixteen-Bit Addition
Adds two 16-bit numbers using 8-bit AVR instructions.

- Lower bytes are added using `ADD`
- Upper bytes are added using `ADC` (add with carry)
- Result is stored in registers `(r4, r5)`

### 2. Reset Rightmost Contiguous Set Bits
Identifies the **rightmost sequence of consecutive 1 bits** in a byte and resets them to 0.

Example:

```
Input:  01011100
Output: 01000000
```

### 3. Two’s Complement Conversion
Converts a positive binary number into its **two’s complement representation** to represent negative values.

Example:

```
+12  = 00001100
-12  = 11110100
```

## Files
```
sixteen-bit-addition.asm
reset-rightmost.asm
twos-complement.asm
README.md
```

## Concepts Demonstrated
- AVR Assembly programming
- Binary arithmetic
- Bitwise operations
- Two’s complement representation
- Multi-byte arithmetic using registers

## Author
Jasvin Kaur  
Computer Science – University of Victoria  
University of Victoria
