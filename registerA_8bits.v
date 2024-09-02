`timescale 1ns / 1ps

module registerA(
    input [7:0]ip,
    input clk,
    input clear,
    input load,
    output reg [7:0]op
    );
	 

	 always@(posedge clk)
	 begin
		if(clear == 1)
		begin
			op = 8'h0;
		end
		else if(clear == 0)
		begin
			if(load==1)
			begin
				op = ip;
			end
		end
	 end


endmodule
