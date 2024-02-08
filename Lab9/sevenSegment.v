`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:18:32 12/31/2023 
// Design Name: 
// Module Name:    sevenSegment 
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
module sevenSegment( 
	input [2:0]a, 
	output reg [7:0]SEG_DATA, 
	output [4:0] SEG_SEL 
); 
 
always @(a) 
	begin 
		case(a) 
		3'b000:SEG_DATA = 8'b01111111; 
		3'b001:SEG_DATA = 8'b00000110; 
		3'b010:SEG_DATA = 8'b01011011; 
		3'b011:SEG_DATA = 8'b01001111; 
		3'b100:SEG_DATA = 8'b01100110; 
		3'b101:SEG_DATA = 8'b01101101; 
		3'b110:SEG_DATA = 8'b01111101; 
		3'b111:SEG_DATA = 8'b00000111; 
		endcase 
	end 
	
	assign SEG_SEL= 5'b00001; 
 
endmodule 