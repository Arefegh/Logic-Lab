`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:16:45 12/31/2023 
// Design Name: 
// Module Name:    devider 
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
module devider(input clk_in, output reg clk_out); 
reg [25:0] counter = 0; 
always @(posedge clk_in) 
	if (counter == 10000000 -1) 
		begin  
			counter <= 0; 
			clk_out <= ~clk_out; 
		end 
	else
			counter <= counter +1;

endmodule 
