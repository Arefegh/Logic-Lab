`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:12:58 12/31/2023 
// Design Name: 
// Module Name:    main 
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
module main(ud, clk, q0, q1, q2, r, s);
	input ud, clk;
	output r, s;
	output q0, q1, q2;
	wire q0_, q1_, ss, rr, jk1, jk2;
	not(q0_, q0);
	not(q1_, q1);
	
	JK_delay x0(1, 1, clk, q0, q0_);
	
	and #10(s, q0, ud);
	and #10(ss, q0_, ~ud);
	or #10(jk1, s, ss);
	
	JK_delay x1(jk1, jk1, clk, q1, q1_);
	
	and #10(r, q1_, ss);
	and #10(rr, q1, s);
	or #10(jk2, r, rr);
	
	JK_delay x2(jk2, jk2, clk, q2, q2_);
	

endmodule
