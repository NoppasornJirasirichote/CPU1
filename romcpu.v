`timescale 1ns / 1ps

module romcpu(
    input [3:0]Address,
    input clk,
    output reg [7:0]Output
    );
	 
	 reg [7:0] rom [15:0];
	 
	 always@(posedge clk)
	 begin
		
		rom[0] <= 8'b00110000;
		rom[1] <= 8'b01000000;
		rom[2] <= 8'b01010000;
		rom[3] <= 8'b01101011;
		rom[4] <= 8'b01111011;
		rom[5] <= 8'b10001011;
		rom[6] <= 8'b10011011;
		rom[7] <= 8'b10101011;
		rom[8] <= 8'b10111011;
		rom[9] <= 8'b11001011;
		rom[10] <= 8'b11011011;
		rom[11] <= 8'b11100000;
		rom[12] <= 8'b11111111;
		Output = rom[Address];
		
	 end

endmodule
