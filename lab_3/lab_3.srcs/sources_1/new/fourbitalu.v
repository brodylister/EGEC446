`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/13/2026 01:23:42 PM
// Design Name: 
// Module Name: 4bitalu
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


module fourbitalu(
    input [3:0] A,
    input [3:0] B,
    input [2:0] Op,
    output reg [3:0] Y
    );
    
    always @(*) begin
        case (Op)
            000: Y = A & B;
            001: Y = A | B;
            010: Y = A ^ B;
            011: Y = A + B;
            100: Y = A - B;
            101: Y = A << 1;
            110: Y = A >> 1;
            111: Y = B;
            default: Y = 0000;
        endcase
    end
endmodule
