`timescale 1ns / 1ps

module muxALU(
    input wire [7:0]d0,
    input wire [7:0]d1,
    input wire d2,
    input wire d3,
    input wire [2:0]s1,
    output reg out
    );
	 
	 
	 always@(d0,d1,d2,d3,s1)
	 begin
	 
	 case (s1)
		3'b000 : out <= d0; 
		3'b001 : out <= d1;
		3'b010 : out <= d2;
		3'b011 : out <= d3; 
	 endcase
	 
	 end


endmodule
