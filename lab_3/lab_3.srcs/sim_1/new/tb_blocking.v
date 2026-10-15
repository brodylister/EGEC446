`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/14/2026 10:14:43 PM
// Design Name: 
// Module Name: tb_blocking
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


module tb_blocking(

    );
    
    reg CLK, Din;
    wire R1, R2, R3, R4, R5, R6;
        
    blocking blockingDUT(.CLK(CLK), .Din(Din), .R1(R1), .R2(R2), .R3(R3));
    
    nonblocking nonblockingDUT(.CLK(CLK), .Din(Din), .R1(R4), .R2(R5), .R3(R6));
    
    always #5 CLK = ~CLK;
    
    initial begin
        Din = 0;
        CLK = 0;
        #10 Din = 1;
        #10 Din = 0;
        #20 Din = 1;
        #20 Din = 0;
        #40;
        $finish;
    
    end
endmodule
