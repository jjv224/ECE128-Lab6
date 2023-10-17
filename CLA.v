`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2023 01:47:25 PM
// Design Name: 
// Module Name: CLA
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


module CLA(
    input [3:0] A,
    input [3:0] B,
    //input Cin,
    output [4:0] S
    );
    
    wire [3:0] P, G, Y;
    wire [4:0] C;
    
    assign C[0] = 0;
    
    xor(P[0], A[0], B[0]);
    xor(P[1], A[1], B[1]);
    xor(P[2], A[2], B[2]);
    xor(P[3], A[3], B[3]);
    
    and(G[0], A[0], B[0]);
    and(G[1], A[1], B[1]);
    and(G[2], A[2], B[2]);
    and(G[3], A[3], B[3]);
    
    xor(S[0], P[0], C[0]);
    xor(S[1], P[1], C[1]);
    xor(S[2], P[2], C[2]);
    xor(S[3], P[3], C[3]);
    
    and(Y[0], C[0], P[0]);
    and(Y[1], C[1], P[1]);
    and(Y[2], C[2], P[2]);
    and(Y[3], C[3], P[3]);
    
    or(C[1], Y[0], G[0]);
    or(C[2], Y[1], G[1]);
    or(C[3], Y[2], G[2]);
    or(C[4], Y[3], G[3]);
    
    assign S[4] = C[4];
    
    
    
    
    
endmodule
