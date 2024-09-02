`timescale 1ns / 1ps

module mux2to1_4bits(
    input wire[3:0]d0,
    input wire[3:0]d1,
    input wire sel,
    output reg [3:0] op
    );
	 
	 always@(d0,d1,sel)
	 begin
		case(sel)
		1'b0 : op <= d0;
		1'b1 : op <= d1;
		endcase
	 end

endmodule
