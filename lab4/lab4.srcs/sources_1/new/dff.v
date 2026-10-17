`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/16/2026 07:41:40 PM
// Design Name: 
// Module Name: dff
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


module adff(
        input CLK, RESET, D,
        output reg Q
    );
    
    always @(RESET) if (RESET == 1) Q <= 0;
    always @(posedge CLK) begin
        if (RESET == 1) begin
            Q <= 0;
        end else begin;
            Q <= D;
        end
    end
endmodule
    

module sdff(
        input CLK, RESET, D,
        output reg Q
    );
    
    always @(posedge CLK) begin
        if (RESET == 1) Q <= 0;
        else Q <= D;
    end

endmodule