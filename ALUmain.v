`timescale 1ns / 1ps

module ALUmain(
    input [7:0]A,
	 input [7:0]B,
	 input [1:0]select,
	 output reg[7:0]op1);
	 
	 always @(*) begin
	 
	 if(select == 2'b000) begin
		op1 = A + B;
		end
		
	 else if (select == 2'b001) begin
		op1 = A - B;
		end
		
	 else if (select == 2'b010) begin
		 op1 = A & B;
		
		end
		
	 else if (select == 2'b011) begin
		op1 = A | B;
		end
		
	end

	 
endmodule
