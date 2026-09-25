`timescale 1ns / 1ps

module tb_full_sub();
  
	reg A, B, Bin;
  	wire D, Bout;
  
  full_sub DUT(
    .A(A), .B(B), .Bin(Bin), .D(D), .Bout(Bout));
  
  integer i = 0;
  
  initial begin
    for (i = 0; i < 8; i = i + 1) begin
      // unpack i into different input signals
      {A, B, Bin} = i;
      #10;
    end
   $finish;
  end
endmodule