`timescale 1ns / 1ps

module mux2to1(
    input [7:0]d0,
    input [7:0]d1,
    input sel,
    output reg[7:0]op
    );
	 
	 always@(d0,d1,sel)
	 begin
		case(sel)
		1'b0 : op <= d0;
		1'b1 : op <= d1;
		endcase
	 end


endmodule
