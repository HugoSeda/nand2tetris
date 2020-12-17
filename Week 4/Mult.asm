// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// ANSWER = 0
// if R1==0 goto STOP (while R1>0, run two lines below)
// ANSWER = ANSWER + R0
// R1 = R1 - 1
// R2 = ANSWER

    @ANSWER
    M=0     // ANSWER = 0

  (LOOP)
    @R1
    D=M
    @BREAK
    D;JEQ   // when R1 == 0, goto BREAK

    @ANSWER
    D=M
    @R0
    D=D+M
    @ANSWER
    M=D     // ANSWER = ANSWER + R0

    @R1
    M=M-1   // R1 = R1 - 1
    @LOOP
    0;JMP

  (BREAK)
    @ANSWER
    D=M
    @R2
    M=D     // R2 = ANSWER

  (END)
    @END
    0;JMP   
    