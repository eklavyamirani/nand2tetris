// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

    // SCREEN is 256x512
    // var input = read KBD;

    // if (KBD > 0)
    // {
    //     pixel = -1;
    // }
    // else
    // {
    //     pixel = 0;
    // }

    // Screen[0 to 512 * 256/16] = pixel
    // for (int i = 0; i < WORD_COUNT; i++)
    // {
    //     SCREEN[i] = pixel
    // }

(LOOP)
// read keyboard
@KBD
D = M;

// if input > 0, GOTO BLACK_BRUSH
@SET_BLACK_BRUSH
D;JGT

(SET_WHITE_BRUSH)
@pixel
M = 0;

@DRAW
0;JMP

(SET_BLACK_BRUSH)
@pixel
M = -1;

// Do the drawing
    // for (int i = 0; i < SCR_WORD_COUNT; i++)
    // {
    //     SCREEN[i] = pixel
    // }

(DRAW)
//SCR_WORD_COUNT = 2^9 * 2^8 / 2^4 = 2^13
@8192
D = A;
@SCR_WORD_COUNT
M = D

// init
@i
M = 0;

(DRAW_LOOP)
// check condition
@i
D = M;

@SCR_WORD_COUNT
D = M - D // SCR_WORD_COUNT - i != 0

@END
D; JLE

// Calculate cursor location
@i
D = M;

@SCREEN
D = A + D;

@cursorLocation
M = D;

@pixel
D = M;

// dereference cursor location
@cursorLocation
A = M;

// set the pixel
M = D;

// i = i + 1
@i
M = M + 1;

@DRAW_LOOP
0;JMP

(END)
@LOOP
0;JMP