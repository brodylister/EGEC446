
module full_add(
  input wire A, B, Cin,
  output wire Sum, Cout
);
  
	wire s1, s2, s3, s4;
  
  // Sum logic
  assign s1 = A ^ B;
  assign Sum = s1 ^ Cin;
  
  // Cout logic
  assign s2 = A & B;
  assign s3 = A & Cin;
  assign s4 = B & Cin;
  assign Cout = s2 | s3 | s4;
  
endmodule
  