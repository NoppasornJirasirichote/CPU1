`timescale 1ns / 1ps

module ircpu(
    input [7:0]Input,
    output reg[3:0]IRcu,
    output reg[3:0]IRpc,
    input load,
    input clear,
	 input clk
    );
	 
	 reg [7:0] IRout;
	 
	 always@(posedge clk)
     begin
        if(clear==1)
        begin
         IRout = 8'b0;
        end
        else if(clear==0)
        begin
            if(load==1)begin
					 IRout = Input;
				end
        end
		  
		  IRpc = IRout[3:0];
		  IRcu = IRout[7:4];
		  
     end

endmodule
