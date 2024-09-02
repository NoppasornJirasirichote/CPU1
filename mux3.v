`timescale 1ns / 1ps

module mux3(
    input wire[3:0]d0,
    input wire[3:0]d1,
	 input wire[1:0]d2,
    input wire [1:0]sel,
    output reg [3:0] op
    );
	 
	 always@(d0,d1,d2,sel)
	 begin
		case(sel)
		2'b00 : op <= d0;
		2'b01 : op <= d1;
		2'b10 : op <= d2;
		endcase
	 end

endmodule
