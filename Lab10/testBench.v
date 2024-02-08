`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:53:29 01/04/2024
// Design Name:   fsm
// Module Name:   D:/C/az10/test2.v
// Project Name:  az10
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fsm
//
// Dependencies:
// 
// 	:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test2;

	// Inputs
	reg cf;
	reg [0:3] pd;
	reg rq;
	reg clk;

	// Outputs
	wire [0:3] DoutOdd;
	wire [0:3] DoutEven;
	wire [0:2] state;

	// Instantiate the Unit Under Test (UUT)
	fsm uut (
		.cf(cf), 
		.pd(pd), 
		.rq(rq), 
		.clk(clk), 
		.DoutOdd(DoutOdd), 
		.DoutEven(DoutEven), 
		.state(state)
	);

	initial begin
		clk = 0;
		forever #10 clk = ~clk;
	end

	initial begin
		cf = 0;
		pd = 4'b0000;
		rq = 0;
		// off
		#20;
		
		cf = 0;
		pd = 4'b0000;
		rq = 1;
		// active
		#20;
		
		cf = 1;
		pd = 4'b0000;
		rq = 1;
		// tale
		#20;
		
		cf = 1;
		pd = 4'b0000;
		rq = 0;
		// off
		#20;
		
		cf = 1;
		pd = 4'b0000;
		rq = 1;
		// active
		#20;
		
		cf = 0;
		pd = 4'b1101;
		rq = 1;
		// request
		#20;
		
		cf = 0;
		pd = 4'b1001;
		rq = 1;
		// give data
		#20;
		
		cf = 1;
		pd = 4'b1001;
		rq = 1;
		// save
		#20;
		
		cf = 1;
		pd = 4'b1001;
		rq = 0;
		// off
		#20;
		
		cf = 1;
		pd = 4'b1001;
		rq = 1;
		// active
		#20;
		
		cf = 1;
		pd = 4'b1101;
		rq = 1;
		// enter Password
		#20;
		
		cf = 0;
		pd = 4'b1101;
		rq = 1;
		// request
		#20;
		
		cf = 0;
		pd = 4'b0110;
		rq = 1;
		// enter Data
		#20;
		
		cf = 1;
		pd = 4'b0110;
		rq = 1;
		// save even
		#20;
		
		cf = 1;
		pd = 4'b0110;
		rq = 0;
		// off
		#20;
		
		
		
	end
      
endmodule

