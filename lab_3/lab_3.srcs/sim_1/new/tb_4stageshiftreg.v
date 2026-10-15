`timescale 1ns / 1ps

module tb () ;

    reg Din, CLK, RESET;
    wire Q0, Q1, Q2, Q3;

    fourstageshiftreg DUT( .Din(Din), .CLK(CLK), .RESET(RESET), .Q0(Q0), .Q1(Q1), .Q2(Q2), .Q3(Q3));
    
    always #5 CLK = ~CLK;
    
    initial begin
        Din = 0;
        CLK = 0;
        RESET = 0;
        #10;
        
        // test reset
        #10;
        Din = 1;
        #10;
        Din = 0;
        #10;
        Din = 1;
        #10; 
        RESET = 1;
        #10
        RESET = 0;
        #10;
        
        // begin pattern: 0101100
        Din = 0;
        #10;
        Din = 1;
        #10;
        Din = 0;
        #10;
        Din = 1;
        #10;
        Din = 1;        
        #10;
        Din = 0;        
        #10;
        Din = 0;
        #40;
        $finish;
    end
endmodule    