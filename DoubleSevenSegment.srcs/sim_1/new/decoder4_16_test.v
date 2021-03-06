`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2021 11:20:31 AM
// Design Name: 
// Module Name: decoder4_16_test
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


module decoder4_16_test();
    reg [3:0] in;
    wire [15:0] out;
    
    reg clk;
    reg [3:0] count;
    
    decoder4_16 UUT( .in(in), .out(out) );
    
    initial begin
        in = 0;
        count = 0;
        clk = 0;
        
        #100;
        
        forever #10 clk=~clk;
    end
    
    always @(posedge clk) begin
        count <= count + 1;
        in <= count[3:0];
    end
endmodule
