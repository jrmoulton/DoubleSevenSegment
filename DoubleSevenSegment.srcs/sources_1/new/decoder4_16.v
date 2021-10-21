`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2021 10:55:41 AM
// Design Name: 
// Module Name: decoder4_16
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


module decoder4_16(d, o);
    input [3:0] d;
    output [15:0] o;
    assign en1 = d[3];
    assign en2 = ~d[3];
    
    decoder3_8 s1(d[2:0], en1, o[7:0]);
    decoder3_8 s2(d[2:0], en2, o[15:8]);
endmodule
