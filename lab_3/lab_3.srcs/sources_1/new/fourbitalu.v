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
            3'b000: Y = A & B;
            3'b001: Y = A | B;
            3'b010: Y = A ^ B;
            3'b011: Y = A + B;
            3'b100: Y = A - B;
            3'b101: Y = A << 1;
            3'b110: Y = A >> 1;
            3'b111: Y = B;
            default: Y = 0000;
        endcase
    end
endmodule
