`timescale 1ns / 1ps

module ALUop(
	 input [3:0]ALU,
    output reg [7:0]op);
	 
	 always @(ALU)
	 
	 begin

	 if(ALU == 4'b0000)
		begin
		op = 8'b0011000;
		end
		
	 else if (ALU == 4'b0001)
		begin
		op = 8'b0100000;
		end
	 
	 else if (ALU == 4'b0010)
		begin
		op = 8'b01010000;
		end
		
	 else if (ALU == 4'b0011) 
		begin
		op = 8'b01101010;
		end
		
	 else if (ALU == 4'b0100) 
		begin
		op = 8'b01111010;
		end
		
	 else if (ALU == 4'b0101) 
		begin
		op = 8'b10001010;
		end
	
	else if (ALU == 4'b0110) 
		begin
		op = 8'b10011010;
		end
		
	else if (ALU == 4'b0111) 
		begin
		op = 8'b10101010;
		end
	
	else if (ALU == 4'b1000)
		begin
		op = 8'b10111010;
		end
		
	else if (ALU == 4'b1001) 
		begin
		op = 8'b11001010;
		end
	
	else if (ALU == 4'b1010) 
		begin
		op = 8'b11011010;
		end
		
	else if (ALU == 4'b1011) 
		begin
		op = 8'b11100000;
		end
		
	else if (ALU == 4'b1100) 
		begin
		op = 8'b11111111;
		end
		
	 else 
		begin
		op = 8'bxxxxxxxx;
		end
	 
	 end

endmodule
