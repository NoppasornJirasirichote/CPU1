`timescale 1ns / 1ps

module incre(
   input [3:0]ip,
    output [3:0]op
    );

	 assign op = ip + 1; 
	 
endmodule
