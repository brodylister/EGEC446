// Counter from 0-9 using a FSM

`timescale 1ns / 1ps

module counter(
    input CLK, RESET,
    output reg [3:0] Q
    );
    
    reg [3:0] PS;
    reg [3:0] NS;
    
    parameter S0 = 4'b0000, S1 = 4'b0001, S2 = 4'b0010, S3 = 4'b0011, S4 = 4'b0100, 
              S5 = 4'b0101, S6 = 4'b0110, S7 = 4'b0111, S8 = 4'b1000, S9 = 4'b1001;

// clocked state register
always @(posedge CLK or posedge RESET) begin
    if (RESET == 1'b1)
        PS <= S0;
    else
        PS <= NS;
end

// combinational block for next-state logic
always @(PS) begin
    case (PS)
        S0: begin
            NS = S1;
            Q = 4'b0000;
            end
        S1: begin
            NS = S2;
            Q = 4'b0001;
            end
        S2: begin
            NS = S3;
            Q = 4'b0010;
            end
        S3: begin
            NS = S4;
            Q = 4'b0011;
            end
        S4: begin
            NS = S5;
            Q = 4'b0100;
            end
        S5: begin
            NS = S6;
            Q = 4'b0101;
            end
        S6: begin
            NS = S7;
            Q = 4'b0110;
            end
        S7: begin
            NS = S8;
            Q = 4'b0111;
            end
        S8: begin
            NS = S9;
            Q = 4'b1000;
            end
        S9: begin
            NS = S0;
            Q = 4'b1001;
            end
        default: begin
            NS = S0;
            Q = 4'b0000;
        end
    endcase
end
endmodule
