// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.


// Calculate the quotient of R0 and R1, disregarding the remainder. Place output in R2.
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
        @b
        D = D - M   

        @END 
        D;JLT           

        @R2
        M = M + 1   

        @b
        D = M       
        @a
        M = M - D    

        @NOTZERO    
        0;JMP
(END)
        @END
        0;JMP 