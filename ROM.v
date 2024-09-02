`timescale 1ns / 1ps 

module ROM(
    input [3:0]Address,
    input clk,
    output reg [7:0]Output
    );
	 
	 reg [7:0] rom [15:0];
	 
	 always@(posedge clk)
	 begin
		
		rom[0] <= 8'b01100000;
		rom[1] <= 8'b10000000;
		rom[2] <= 8'b10100000;
		rom[3] <= 8'b11000001;
		rom[4] <= 8'b11111111;
		rom[5] <= 8'b00000000;
		Output = rom[Address];
		
	 end


endmodule
