`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2026 01:23:42 PM
// Design Name: 
// Module Name: 4stageshiftreg
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fourstageshiftreg(
    input Din, CLK, RESET,
    output reg Q0, Q1, Q2, Q3
    );
    
    always @(posedge CLK or posedge RESET) begin
        if (RESET == 1) begin
            Q0 <= 0;
            Q1 <= 0;
            Q2 <= 0;
            Q3 <= 0;
        end else begin
            Q0 <= Din;
            Q1 <= Q0;
            Q2 <= Q1;
            Q3 <= Q2;
        end
    end

endmodule
