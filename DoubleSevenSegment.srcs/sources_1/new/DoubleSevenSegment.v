`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2021 12:25:21 PM
// Design Name: 
// Module Name: DoubleSevenSegment
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


module DoubleSevenSegment(input wxyz, clk, output D, an);
    wire [7:0] wxyz; // 8 switches we'll use 4 at a time
    wire [7:0] seg; // a single 7 seg display
    wire [3:0] switch_sel; // which set of 4 of 8 switches
    wire sel, clk; // Sel is wired to the clock
    wire [6:0] D; // the output 7 seg (must be inv because anode)
    wire [3:0] an;

    ClockDivider #(.PRESCALER(50000)) CKD(
        .clkin(clk),
        .clkout(sel)
    );

    MUXarray ma(sel, wxyz[7:4], wxyz[3:0], switch_sel);
    NewSevenSegment newseg(switch_sel, seg);

    assign an[0] = ~sel;
    assign an[1] = sel;
    assign an[2] = 1;
    assign an[3] = 1;


    assign D= ~seg;
 
endmodule

