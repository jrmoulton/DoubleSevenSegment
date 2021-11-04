`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/21/2021 12:12:50 PM
// Design Name: 
// Module Name: MUXArray
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


module MUXarray #(parameter SIZE=4) (
    input sel,
    input [SIZE-1:0] a,
    input [SIZE-1:0] b,
    input [SIZE-1:0] o
    );
    
    genvar i;
    
    generate
        for (i=0; i<SIZE; i=i+1) begin: MUXarray
                MUX m(
                        .x(a[i]),
						.y(b[i]),
                        .sel(sel),
                        .out(o[i])
                );
        end
    endgenerate
endmodule
