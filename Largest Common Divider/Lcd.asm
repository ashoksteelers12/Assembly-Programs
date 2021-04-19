// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.


// Calculate the largest common divider between R0 and R1, and place output in R2.
// Put your code here.

@R0 
D = M     
@a 
M = D       

@R1 
D = M     
@b 
M = D   

(NOTZERO)
        @b
        D = M
        @SETB
        D;JEQ
        
        @a
        D = M
        @SETA
        D;JEQ

        @b
        D = D - M  

        @MOD 
        D;JLT            

        @b
        D = M       
        @a
        M = M - D    

        @NOTZERO    
        0;JMP
(MOD)
        @a
        D = M
        @temp
        M = D
        @b
        D = M
        @a
        M = D
        @temp
        D = M
        @b
        M = D
        @NOTZERO
        0;JMP
(SETA)
        @b
        D = M
        @R2
        M = D
        @END
        0;JMP
(SETB)
        @a
        D = M
        @R2
        M = D
        @END
        0;JMP
(END)
        @END
        0;JMP 