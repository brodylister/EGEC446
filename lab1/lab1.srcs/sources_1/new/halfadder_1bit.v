`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2026 03:07:20 PM
// Design Name: 
// Module Name: halfadder_1bit
// Project Name: Lab 1
// Target Devices: 50T
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

module halfadder_1bit(
    input A,
    input B,
    output S,
    output C
    );

    assign S = A ^ B;
    assign C = A & B;


endmodule
