`timescale 1ns / 1ps

module Amux(
    input [7:0]d0,
    input [7:0]d1,
    input A_select,
    output reg[7:0]op
    );
	 
	 always@(d0,d1,A_select)
	 begin
		case(A_select)
		1'b0 : op <= d0;
		1'b1 : op <= d1;
		endcase
	 end
	 
endmodule
