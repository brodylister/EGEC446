////////////////////////////////////////////////////////////////////////////////
// Institution:   California State University Fullerton
// Course:        EGEC 446 - Digital Design In Verilog
// Engineer:      Brody Lister (884483777)
//
// Create Date:   2026-10-16
// Design Name:   tb_shiftreg
// Module Name:   tb_shiftreg
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

module tb_shiftreg();
    parameter  N = 4;
    localparam [11:0] PATTERN = 12'b1101_0010_1100;

    reg  CLK = 0, RESET = 1, S_IN = 0;
    wire S_OUT;
    integer k;
    
    shiftreg #(.N(N)) 
        dut (.CLK(CLK), .RESET(RESET), .S_IN(S_IN), .S_OUT(S_OUT));
    
    always #5 CLK = ~CLK;
    
    initial begin
        #5 RESET <= 0;
        #10;
        for (k = 1; k <= 16; k = k + 1) begin
            S_IN   = (k <= 12) ? PATTERN[12-k] : 1'b0;
            #10;
        end
    $finish;
    end
        

endmodule
