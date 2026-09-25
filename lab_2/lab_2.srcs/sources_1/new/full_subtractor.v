module full_sub(
  input wire A, B, Bin,
  output wire D, Bout
);
  
	wire s1, s2, s3;
  
  // Difference logic
  assign s1 = A ^ B;
  assign D = s1 ^ Bin;
  
  // Borrow logic
  assign s2 = (~s1) & Bin;
  assign s3 = (~A) & B;
  assign Bout = s2 | s3;
  
endmodule