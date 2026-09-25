`timescale 1ns / 1ps

module tb_full_add();
  
	reg A, B, Cin;
  	wire Sum, Cout;
  
  full_add DUT(
    .A(A), .B(B), .Cin(Cin), .Sum(Sum), .Cout(Cout));
  
  integer i;
  
  initial begin
    for (i = 0; i < 8; i = i + 1) begin
      // unpack i into different input signals
      {Cin, A, B} = i;
      #10;
    end
   $finish;
  end
endmodule