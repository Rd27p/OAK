; Program to calculate 97 - 35 + 8 * 12 + 27
MVI A, 61H      ; Load 97 into A
MVI B, 23H      ; Load 35 into B
SUB B           ; A = A - B = 97 - 35 = 62

MVI C, 08H      ; Load 8 into C
MVI D, 0CH      ; Load 12 into D

; Multiply C and D
  MOV E, C        ; Copy C into E (E = 8)
  LOOP:
      ADD C       ; A = A + C 
      sDCR D       ; Decrement D 
      JNZ LOOP    ; Repeat until D = 0
                  ; A now contains A = 62 + (8 * 12) = 158

MVI E, 1BH      ; Load 27 into E
ADD E           ; A = A + E = 158 + 27 = 185

OUT 07H         ; Output result to port 07H
HLT             ; Halt the program (End Program)
