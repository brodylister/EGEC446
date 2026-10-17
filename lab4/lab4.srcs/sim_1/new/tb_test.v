////////////////////////////////////////////////////////////////////////////////
// Institution:   California State University Fullerton
// Course:        EGEC 446 - Digital Design In Verilog
// Engineer:      Brody Lister (884483777)
//
// Create Date:   2026-10-16
// Design Name:   tb_test
// Module Name:   tb_test
// Project Name:  lab4
// Target Device: xc7a50tcsg324-1
// Tool Version:  2026.1
//
// Description:
//
// Dependencies:  None
//
// Revision History:
//   0.01 - 2026-10-16 - Brody Lister - File created
//
// Additional Comments:
//
////////////////////////////////////////////////////////////////////////////////

`timescale 1ns / 1ps

module tb_test();
    
    reg CLK, RESET, D;
    wire AQ, SQ;
    
    adff ASYNCH_DUT(
        .CLK(CLK), .RESET(RESET), .D(D), .Q(AQ));
        
    sdff SYNCH_DUT(
        .CLK(CLK), .RESET(RESET), .D(D), .Q(SQ));

    always #5 CLK <= ~CLK;
    
    initial begin
        CLK <= 0;
        RESET <= 0;
        D <= 0;
        
        // test reset
        #5 RESET <= 1;
        #10 D <= 1;
        #10 RESET <= 0;
        D <= 0;
        
        // standard functions
        #10 D <= 1;
        #10 D <= 0;
        
        // asynch reset;
        #10 D <= 1;
        #5 RESET <= 1;
        #10 RESET <= 0;
        
        #10;
        $finish;
    
    end

endmodule
