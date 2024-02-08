`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:16:07 12/31/2023 
// Design Name: 
// Module Name:    fpga 
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
module fpga(input ud,input clk,output[7:0]SEG_DATA,output [4:0] SEG_SEL); 
wire [2:0]a; 
wire clk_out;
	devider d(clk,clk_out); 
	main m(ud,clk_out,a[2],a[1],a[0]); 
	sevenSegment seg(a,SEG_DATA,SEG_SEL); 
  
endmodule
