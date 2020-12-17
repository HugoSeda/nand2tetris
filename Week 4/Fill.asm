// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// if KBD > 0, black screen
// if KBD == 0, white screen
// Put -1 into SCREEN and repeat 8190 more times

  (START)
    @i
    M=0      // i = 0

    @8192
    D=A
    @n
    M=D   // n = 8192

    @SCREEN
    D=A
    @arr
    M=D   // arr = SCREEN

    @i2
    M=0      // i2 = 0

  (LOOP)
    @KBD
    D=M
    @LOOP
    D;JEQ    // if KBD == 0 goto LOOP

  (LOOP2)
    @i
    D=M
    @n
    D=D-M
    @LOOP3
    D;JEQ    // if i==n, goto LOOP3

    @arr
    D=M
    @i
    A=D+M
    M=-1     // insert -1 into arr

    @i
    M=M+1    // i = i + 1

    @LOOP2
    0;JMP    // jump to LOOP2

  (LOOP3)
    @KBD
    D=M
    @LOOP4
    D;JEQ    // if KBD == 0 goto LOOP4

    @LOOP3
    0;JMP    // if KBD > 0 goto LOOP3

  (LOOP4)
    @i2
    D=M
    @n
    D=D-M
    @LOOP5
    D;JEQ    // if i2==n, goto LOOP5

    @arr
    D=M
    @i2
    A=D+M
    M=0     // insert 0 into arr

    @i2
    M=M+1    // i2 = i2 + 1

    @LOOP4
    0;JMP    // jump to LOOP4

  (LOOP5)
    @START
    0;JMP