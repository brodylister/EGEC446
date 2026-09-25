`timescale 1ns / 1ps

module tb_both();
  
	reg Op, X, Y, CBin;
  	wire S, Fout;
  
  both DUT(
    .X(X), .Y(Y), .Op(Op), .CBin(CBin), .S(S), .Fout(Fout));
  
  integer i = 0;
  
  initial begin
    for (i = 0; i < 16; i = i + 1) begin
      // unpack i into different input signals
      {Op, X, Y, CBin} = i;
      #10;
    end
   $finish;
  end
endmodule