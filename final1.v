`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2023 04:16:29 PM
// Design Name: 
// Module Name: final1
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module final1(
    input [3:0] Aa,
    input [3:0] Bb,
    //input Cin,
    input clk,
    input en,
    output rdy,
    output [15:0] bcd_d_outt
    );
    wire [4:0] Ss;
    wire [11:0] bin_d_inn;
    // CLA puut(.A(Aa), .B(Bb), .S(S));
    CLA add(Aa,Bb,Ss);
    assign bin_d_inn = {7'b0, Ss};
    bin2BCD con(.clk(clk), .en(en),.rdy(rdy), .bin_d_in(bin_d_inn), .bcd_d_out(bcd_d_outt));
    
endmodule
