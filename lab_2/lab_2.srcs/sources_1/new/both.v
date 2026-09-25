module both(
  input wire Op, X, Y, CBin,
  output reg S, Fout
);
  
	wire sum, cout, d, bout;
  
  full_add adder(.A(X), .B(Y), .Cin(CBin), .Sum(sum), .Cout(cout));
  full_sub subber(.A(X), .B(Y), .Bin(CBin), .D(d), .Bout(bout));
  
  always @(*) begin
    if (Op == 0) begin
      S <= sum;
      Fout <= cout;
    end else begin
      S <= d;
      Fout <= bout;
    end
    end
  
endmodule