`timescale 1ns / 1ps

module tb_fourbitalu ();
    reg[3:0] A, B;
    reg[3:0] Op;
    wire[3:0] Y;
    
    reg [7:0] test_vectors [15:0];
    integer i = 0;

    fourbitalu DUT(.A(A), .B(B), .Op(Op), .Y(Y));
    
    initial begin
        A = 0;
        B = 0;
        Op = 0;
        $readmemb("stimulus_vectors.txt", test_vectors);
        
        for (i = 0; i < 16; i = i + 1) begin
            Op = i / 2;
            {A, B} = test_vectors[i];
            #10;
            i = i + 1;
            {A, B} = test_vectors[i];
            #15;
        end
        $finish;
    end
endmodule