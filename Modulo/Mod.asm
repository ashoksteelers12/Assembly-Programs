// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.


// Calculate the modulo of R1 and R2, and place output in R2.
// Put your code here.

@R0 
D = M     
@a 
M = D       

@R1 
D = M     
@b 
M = D

@0 
D = A     
@R2
M = D    

(NOTZERO)
        @a
        D = M

        @END
        D;JEQ

        @b
        D = D - M  

        @END 
        D;JLT            

        @b
        D = M       
        @a
        M = M - D    

        @NOTZERO    
        0;JMP
(END)
        @a
        D = M
        @R2
        M = D

        @END
        0;JMP 