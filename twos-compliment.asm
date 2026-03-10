; twos-complement.asm
; CSC 230: Spring 2025
;
; Code provided for Assignment #1
; Author: Sudhakar Ganti
; 

; This skeleton of an assembly-language program is provided to help you
; begin with the programming task for A#1, part (c). In this and other
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
; and to find the rightmost bit that is set, keep all bits to the right
; of this bit (including this bit) intact and flip remaining
; by storing this new value in R17. For example, given
; the bit sequence 0b01011100, find the right-most set bit and
; fliiping bits to the left of this will produce 0b10100100.
; As another example, given the bit sequence 0b00110110,
; the result will be 0b11001010.
;
; Your solution must work, of course, for bit sequences other
; than those provided in the example. (How does your
; algorithm handle a value with no set bits? with all set bits?
; or if if it is already a negative number?)

; ANY SIGNIFICANT IDEAS YOU FIND ON THE WEB THAT HAVE HELPED
; YOU DEVELOP YOUR SOLUTION MUST BE CITED AS A COMMENT (THAT
; IS, WHAT THE IDEA IS, PLUS THE URL).

    .cseg
    .org 0

; ==== END OF "DO NOT TOUCH" SECTION ==========

	ldi R16, 0b01011100
	;  ldi R16, 0b10110110


	; THE RESULT **MUST** END UP IN R17

; **** BEGINNING OF "STUDENT CODE" SECTION **** 

; Your solution here.

; Initialize variables


    mov R17, R16         ; Copy input to R17
    mov R18, R16         ; Copy input to R18 for manipulation
    ldi R19, 1           ; Load 1 into R19 for bit manipulation

find_rightmost_set:
    tst R18              ; Test if R18 is zero
    sbrc R18, 0          ; Skip next instruction if rightmost bit is 0
    rjmp flip_bits       ; If rightmost bit is 1, jump to flip_bits
    lsr R18              ; Logical shift right R18
    lsl R19              ; Logical shift left R19
    rjmp find_rightmost_set ; Repeat the loop

flip_bits:
    dec R19              ; Decrement R19 to get mask for bits to keep
    com R19              ; Complement R19 to get mask for bits to flip
    eor R17, R19         ; XOR R17 with R19 to flip the required bits
	dec R19              ; Decrement R19 to get mask for bits to keep
    com R19              ; Complement R19 to get mask for bits to flip
    eor R17, R19 
	rjmp endloop ;Jump to end

endloop:
	nop





; **** END OF "STUDENT CODE" SECTION ********** 



; ==== BEGINNING OF "DO NOT TOUCH" SECTION ====
twos_complement_stop:
    rjmp twos_complement_stop


; ==== END OF "DO NOT TOUCH" SECTION ==========
