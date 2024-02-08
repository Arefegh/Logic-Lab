`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:31:48 01/04/2024 
// Design Name: 
// Module Name:    fsm 
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
module fsm(cf, pd, rq, clk, DoutOdd, DoutEven, state);
	input cf, rq, clk;
	input [0:3] pd;
	output [0:3] DoutOdd;
	output [0:3] DoutEven;
	output reg [0:2] state;
	reg En1, En2;
	
	
	parameter off = 3'b000;
	parameter active = 3'b001;
	parameter request = 3'b101;
	parameter tale = 3'b111;
	parameter save = 3'b110;
	parameter password = 4'b1101;
	
	
	initial state = off;
	
	always @(cf or rq) begin
		case (state)
			off:
				if (rq == 1)
					state <= active;
			active:
				if (rq == 0)
					state <= off;
				else if (pd == password)
					state <= request;
				else
					state <= tale;
			request:
				if (rq == 0)
					state <= off;
				else begin
					state <= save;
					En2 = pd % 2;
					En1 = ~En2;
				end
			tale:
				if (rq == 0)
					state <= off;
			save:
				if (rq == 0)
					state <= off;
		endcase
	end
	
	DFF even(En1, pd, clk, DoutEven);
	DFF odd(En2, pd, clk, DoutOdd);
	
endmodule
