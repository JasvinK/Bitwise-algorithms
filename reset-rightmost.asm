; reset-rightmost.asm
; CSC 230: Spring 2025
;
; Code provided for Assignment #1
; Author: Mike Zastre
; 

; This skeleton of an assembly-language program is provided to help you
; begin with the programming task for A#1, part (b). In this and other
; files provided through the semester, you will see lines of code
; indicating "DO NOT TOUCH" sections. You are *not* to modify the
; lines within these sections. The only exceptions are for specific
; changes announced on conneX or in written permission from the course
; instructor. *** Unapproved changes could result in incorrect code
; execution during assignment evaluation, along with an assignment grade
; of zero. ****
;
; In a more positive vein, you are expected to place your code with the
; area marked "STUDENT CODE" sections.

; ==== BEGINNING OF "DO NOT TOUCH" SECTION ====
; Your task: You are to take the bit sequence stored in R16,
; and to reset the rightmost contiguous sequence of set
; by storing this new value in R1. For example, given
; the bit sequence 0b01011100, resetting the right-most
; contigous sequence of set bits will produce 0b01000000.
; As another example, given the bit sequence 0b10110110,
; the result will be 0b10110000.
;
; Your solution must work, of course, for bit sequences other
; than those provided in the example. (How does your
; algorithm handle a value with no set bits? with all set bits?)

; ANY SIGNIFICANT IDEAS YOU FIND ON THE WEB THAT HAVE HELPED
; YOU DEVELOP YOUR SOLUTION MUST BE CITED AS A COMMENT (THAT
; IS, WHAT THE IDEA IS, PLUS THE URL).

    .cseg
    .org 0

; ==== END OF "DO NOT TOUCH" SECTION ==========

	ldi R16, 0b01011100
	;ldi R16, 0b10110110


	; THE RESULT **MUST** END UP IN R1

; **** BEGINNING OF "STUDENT CODE" SECTION **** 

; Your solution here.

; Initialize
;mov R1, R16      ; Copy input to R1 (will be modified)
ldi R17, 1       ; Load 1 into R17 for bit manipulation
clr R18          ; Clear R18 (will be used as a mask)

find_rightmost_zero:
    com R1           ; Complement R1 to find first zero (which was originally a one)
    and R17, R1      ; Test current bit
    rjmp create_mask ; If bit is set (originally zero), create mask
    lsl R17          ; Shift left to test next bit
    or R18, R17      ; Add current bit position to mask
    rjmp find_rightmost_zero

create_mask:
    com R18          ; Complement R18 to get the final mask

apply_mask:
    mov R1, R16      ; Restore original value to R1
    and R1, R18      ; Apply mask to reset rightmost contiguous set bits

	
; **** END OF "STUDENT CODE" SECTION ********** 



; ==== BEGINNING OF "DO NOT TOUCH" SECTION ====
reset_rightmost_stop:
    rjmp reset_rightmost_stop


; ==== END OF "DO NOT TOUCH" SECTION ==========
