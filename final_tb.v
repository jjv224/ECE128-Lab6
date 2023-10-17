`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/10/2023 04:28:08 PM
// Design Name: 
// Module Name: final_tb
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

 
module final_tb(); //can we test the CLA within the final tb, is 0000 supposed to be hex?
    reg [3:0] A;
    reg [3:0] B;
    //reg Cin;
    reg clk = 0;
    reg en;// = 0;
    wire [15:0] bcd_d_out;
    wire rdy;
    
    final1 ruut(.Aa(A), .Bb(B),.clk(clk), .en(en), .rdy(rdy), .bcd_d_outt(bcd_d_out));
    
    initial
    begin
        //clk = 0;
        forever
        begin
            #10 clk = ~clk; //10*2 for full wave
        end
    end
    
    initial 
        begin
        forever
            begin
                    A = 4'hf;
                    B = 4'hf;
                    //Cin = 0;
                    
                
        #20 //en must catch rising edge of clk
        en = 0;
        #1340; 
        A = 1;
        B = 5;
        //Cin = 0;
        en = 1;
        #20
        en = 0;
        #1340; 
        
        A = 6;
        B = 5;
       // Cin = 0;
        en = 1;
        #20
        en = 0;
        #1340; 
        
        A = 10;
        B = 23;
        //Cin = 0;
        en = 1;
        #20
        en = 0;
        #1340; 
        
        A = 100;
        B = 5;
       // Cin = 0;
        en = 1;
        #20
        en = 0;
        #1340; 
         A = 101;
        B = 5;
        //Cin = 0;
        en = 1;
        #20
        en = 0;
        #1340; 
        
        A = 10000;
        B = 5;
        //Cin = 0;
        en = 1;
        
        #20
        en = 0;
        #1340; 
        
        A = 1001;
        B = 5;
        //Cin = 0;
        en = 1;
        #20
        en = 0;
        #1340;
        
        A = 1006;
        B = 5;
        //Cin = 0;
        en = 1;
        #20
        en = 0;
        #1340;
        
        A = 1050;
        B = 5;
        //Cin = 0;
        en = 1;
        #20
        en = 0;
        #1340;
        
        A = 10;
        B = 5;
        //Cin = 0;
        en = 1;
        #20
        en = 0;
        
        #1340;
        
        A = 100;
        B = 5;
        //Cin = 0;
        en = 1;
        #20
        en = 0;
        #1340; 
        
        A = 11;
        B = 5;
        //Cin = 0;
        en = 1;
        #20
        en = 0;
        #1340;
        end
        end    
            
endmodule
