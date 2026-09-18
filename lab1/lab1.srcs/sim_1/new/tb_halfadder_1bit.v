`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/18/2026 03:08:45 PM
// Design Name: 
// Module Name: tb_halfadder_1bit
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


module tb_halfadder_1bit();
    reg A, B;
    wire S, C;
    
    halfadder_1bit DUT(
    .A(A),
    .B(B),
    .S(S),
    .C(C)
    );
    
    initial begin
    
    A = 0; B = 0;
    #10 A = 0; B = 1;
    #10 A = 1; B = 0;
    #10 A = 1; B = 1;
    #10;
    
    $finish;
    end
    
endmodule
