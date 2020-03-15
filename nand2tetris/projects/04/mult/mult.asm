// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.


    // var multiplicand = R0;
    // var multiplier = R1;
    // var result = 0;

    // for (int i=1; i <= multiplier; ++i)
    // {
    //     result = result + multiplicand;
    // }

    // R2 = result;

// result = 0
@R2
M = 0;

// i = 0
@i
M = 0;

(LOOP)
// if i >= multiplier, jump to end of loop
@R1
D = M

@i
D = M - D

@END_LOOP
D; JGE

// result = result + multiplicand
@R0
D = M

@R2
M = M + D

// i++
@i
M = M + 1

// Keep looping
@LOOP
0;JMP

(END)
@END
0;JMP