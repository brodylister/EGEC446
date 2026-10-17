////////////////////////////////////////////////////////////////////////////////
// Institution:   California State University Fullerton
// Course:        EGEC 446 - Digital Design In Verilog
// Engineer:      Brody Lister (884483777)
//
// Create Date:   2026-10-16
// Design Name:   tb_register
// Module Name:   tb_register
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

module tb_register();
    reg CLK, RESET, EN;
    reg [7:0] D;
    wire [7:0] Q;
    
    register DUT(
        .CLK(CLK), .RESET(RESET), .EN(EN), .D(D), .Q(Q));
        
    always #5 CLK = ~CLK;
    
    initial begin
        CLK <= 1;
        RESET <= 1;
        EN <= 0;
        D <= 8'b0000_0000;
        
        // make edge behavior obvious
        #10 RESET <= 0;
        #10 EN <= 1;
        #10 D <= 8'b1111_1111;
        
        #15;
        RESET <= 1;
        EN <= 0;
        D <= 8'b0000_0000;
        #10 RESET <= 0;
        #10 EN <= 1;
        #10 D <= 8'b1111_1111;
        #10 D <= 8'b0101_0101;
        #5 D <= 8'b0000_0000;
        #5 D <= 8'b1111_0000;
        
        #15
        RESET <= 1;
        EN <= 0;
        D <= 8'b0000_0000;
        #10;
        $finish;
        end

endmodule
