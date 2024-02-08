`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:37:42 01/04/2024 
// Design Name: 
// Module Name:    DFF 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DFF(En, Din, clk, Dout);
	input En, clk;
	input [0:3] Din;
	output reg [0:3] Dout;
	
	always @(posedge clk)
		if (En)
			Dout <= Din;
endmodule
