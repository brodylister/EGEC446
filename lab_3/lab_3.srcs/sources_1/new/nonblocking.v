`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 09:58:08 PM
// Design Name: 
// Module Name: nonblocking
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


module nonblocking(
    input CLK, Din,
    output reg R1, R2, R3
    );
    
    always @(posedge CLK) begin
        R1 <= Din;
        R2 <= R1;
        R3 <= R2;
    end
endmodule

