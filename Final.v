`timescale 1ns / 1ps

module Final(
    input [3:0] A,
    input [3:0] B,
    input Cin,
    output decimalSum
    );
    wire [11:0] Sum;
    CLA chicken(.A(A), .B(B), .Cin(Cin), .S(S));
    assign Sum = {7'b0, S};
    bin2BCD nugget(.bin_d_in(Sum), .bcd_d_out(decimalSum));
    
endmodule
