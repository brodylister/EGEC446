`timescale 1ns / 1ps

module Top(
    input CLK, RESET,
    input [7:0] AN,
    output [6:0] display,
    output [7:0] Anode
    );
    
    assign Anode = AN;
        
    wire slow_clock;
    wire [3:0] count;
    
    Clock_Divider CDiv (
        .CLK(CLK),
        .RESET(RESET),
        .clkout(slow_clock)
    );
    
    counter FSM (
        .CLK(slow_clock),
        .RESET(RESET),
        .Q(count)
    );
    
    binary_to_7segment seg_display (
        .count(count),
        .display(display)
    );
endmodule
