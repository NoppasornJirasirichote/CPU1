`timescale 1ns / 1ps

module decrement(
    input [7:0]ip,
    output reg [7:0] op
    );
	 
	 always@(ip,op)
	 begin
		if(ip > 0)
		begin
			op = ip - 1;
		end
		else if(ip == 0)
		begin
			op = ip;
		end
	 end

endmodule
