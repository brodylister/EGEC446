////////////////////////////////////////////////////////////////////////////////
// Institution:   California State University Fullerton
// Course:        EGEC 446 - Digital Design In Verilog
// Engineer:      Brody Lister (884483777)
//
// Create Date:   2026-10-16
// Design Name:   register
// Module Name:   register
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

module register(
        input CLK, RESET, EN,
        input [7:0] D,
        output reg [7:0] Q
    );
    
    always @(RESET) if (RESET == 1) Q <= 8'b0000_0000;
    always @(posedge CLK) begin
        if (RESET == 1) begin
            Q <= 8'b0000_0000;
        end else if (EN == 1) begin
            Q <= D;
        end else begin
            // do nothing
        end
    end
endmodule
