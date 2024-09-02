`timescale 1ns / 1ps

module PCcpu(
    input [3:0]Input,
	 input clk,
    input clear,
    input load,
	 output reg [3:0]Output
    );
	 
	 reg [3:0] pcadd;
	 
	 always@(posedge clk)
	 begin
		if(clear==1)
		begin
			pcadd = 4'b0000;
		end
		else
		begin
			if(load==1)
			begin
				pcadd = Input;
			end
		end
		Output = pcadd;
	 end

endmodule
