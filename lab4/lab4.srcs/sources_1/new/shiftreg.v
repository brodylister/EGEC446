////////////////////////////////////////////////////////////////////////////////
// Institution:   California State University Fullerton
// Course:        EGEC 446 - Digital Design In Verilog
// Engineer:      Brody Lister (884483777)
//
// Create Date:   2026-10-16
// Design Name:   shiftreg
// Module Name:   shiftreg
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

module shiftreg #(
    parameter N = 4
    )(
    input CLK, RESET, S_IN,
    output S_OUT
);
    reg [N-1:0] q;

    always @(posedge CLK or posedge RESET) begin
        if (RESET)
            q <= {N{1'b0}};
        else
            q <= {S_IN, q[N-1:1]};
    end

    assign S_OUT = q[0];

endmodule   
