`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2026 03:55:48 PM
// Design Name: 
// Module Name: RCadder_4bit
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


module RCadder_4bit(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output [3:0] Sum,
    input Cout
    );
    
    wire c1, c2, c3;
    
    fulladder_1bit fa1(.A(A[0]), .B(B[0]), .Cin(Cin), .Sum(Sum[0]), .Cout(c1));
    fulladder_1bit fa2(.A(A[1]), .B(B[1]), .Cin(c1), .Sum(Sum[1]), .Cout(c2));
    fulladder_1bit fa3(.A(A[2]), .B(B[2]), .Cin(c2), .Sum(Sum[2]), .Cout(c3));
    fulladder_1bit fa4(.A(A[3]), .B(B[3]), .Cin(c3), .Sum(Sum[3]), .Cout(Cout));
    
endmodule
