`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04/06/2021 05:32:41 AM
// Design Name: 
// Module Name: Clock_Divider
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


module Clock_Divider(
    input CLK, RESET,
    output clkout
    );
    
    //// write a Verilog code to slow down the clock from 100 MHz to 1 Hz
    
    reg [25:0] count = 1;
    reg clk_toggle = 0;
    
always @(posedge CLK or posedge RESET) begin
    if (RESET == 1'b1) begin
        count <= 1;
        clk_toggle <= 0;
    end
    else if (count == 50000000) begin
        count <= 1;
        clk_toggle <= ~clk_toggle;
    end
    else
        count <= count + 1;    
end

    assign clkout = clk_toggle;

  
    
    
endmodule
