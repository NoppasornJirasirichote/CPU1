`timescale 1ns / 1ps

module Bmux(
    input [7:0]d0,
    input [7:0]d1,
    input B_select,
    output reg[7:0]op
    );
	 
	 always@(d0,d1,B_select)
	 begin
		case(B_select)
		1'b0 : op <= d0;
		1'b1 : op <= d1;
		endcase
	 end
	 
endmodule
