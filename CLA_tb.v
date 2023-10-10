`timescale 10ns / 1ps

module CLA_tb();
    reg [3:0] A;
    reg [3:0] B;
    reg Cin;
    wire [4:0] S;
    CLA uut(.A(A), .B(B), .Cin(Cin), .S(S));
    
    initial begin
        A = 1; B = 0; Cin = 0; #1;
        A = 2; B = 4; Cin = 1; #1;
        A = 4'hb; B = 4'h6; Cin = 0; #1;
        A = 5; B = 3; Cin = 1; #1;
    end
    
    
    
    
endmodule