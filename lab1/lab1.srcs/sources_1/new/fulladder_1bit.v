`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2026 03:20:37 PM
// Design Name: 
// Module Name: fulladder_1bit
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


module fulladder_1bit(
    input A,
    input B,
    input Cin,
    output Sum,
    output Cout
    );
    
    wire i1, i2, i3;
    
    halfadder_1bit ha1(
    .A(A),
    .B(B),
    .S(i1),
    .C(i2));
    
    halfadder_1bit ha2(
    .A(i1),
    .B(Cin),
    .S(Sum),
    .C(i3));
    
    assign Cout = i2 | i3;
    
endmodule
