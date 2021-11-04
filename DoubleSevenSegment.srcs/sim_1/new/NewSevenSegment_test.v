`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/28/2021 11:04:31 AM
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


module NewSevenSegment_test();
    reg [3:0] wxyz;

	wire [6:0] segNew, segTruthTable, err;
	wire not_the_same;
    
    reg clk;
    
    NewSevenSegment DUT( .wxyz(wxyz), .seg(segNew));
	SevenSegmentTruthTable REF(.N(wxyz), .D(segTruthTable));

    
    initial begin
        wxyz = 0;
        clk = 0;
        
        #100;
        
        forever #10 clk=~clk;
    end

	assign err = segNew^segTruthTable;
	assign not_the_same = |err;
    
    always @(posedge clk) begin
		wxyz = wxyz + 1;
    end
endmodule

