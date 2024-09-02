`timescale 1ns / 1ps

module FSM_EC1(
	 input clk,
	 input reset,
	 input Aneq0,
	 input [2:0]ir75,
    output reg IRload,
    output reg PCload,
    output reg INmux,
    output reg Aload,
    output reg JNZmux,
    output reg Halt,
	 output [2:0]op
    );
	 
	 wire [2:0] ir75;
	 
	 parameter start = 3'b000,fetch = 3'b001,decode = 3'b010,Input = 3'b011,Output = 3'b100,dec = 3'b101,jnz = 3'b110,halt = 3'b111;

	 reg [2:0] state;
	 
	 always @(posedge clk) begin
	 if(reset == 1)
	 state = start;
	 else begin
	 case(state)
		 start : state = fetch;
		 
		 fetch : state = decode;
		 
		 decode : if(ir75 == 3'b011)begin
						state = Input;
					 end
					 else if(ir75 == 3'b100)begin
						state = Output;
					 end
					 else if(ir75 == 3'b101)begin
						state = dec;
					 end
					 else if(ir75 == 3'b110)begin
						state = jnz;
					 end
					 else if(ir75 == 3'b111)begin
						state = halt;
					 end
					 else if(ir75 == 3'b000)begin
						state = start;
					 end
					 else if(ir75 == 3'b001)begin
						state = start;
					 end
					 else if(ir75 == 3'b010)begin
						state = start;
					 end
					 
					 
		 Input : state = start;
		 
		 Output : state = start;
		 
		 dec : state = start;
		 
		 jnz : state = start;
		 
		 halt : state = halt;
		 
		 default: state = halt;
		 
		 endcase
		 end
		 end
	 
	 always @(posedge clk)
		begin : FSM_OUT
		 if(reset == 1'b1)begin
			 IRload <= #1 1'b0;
			 PCload <= #1 1'b0;
			 INmux <= #1 1'b0;
			 Aload <= #1 1'b0;
			 JNZmux <= #1 1'b0;
			 Halt <= #1 1'b0;
		 end
		 else if (reset == 1'b0) begin
			 case(state)
				 start : begin
								IRload <= 1'b0;
								PCload <= 1'b0;
								INmux <= 1'b0;
								Aload <= 1'b0;
								JNZmux <= 1'b0;
								Halt <= 1'b0;
							end
				 fetch : begin
								IRload <= 1'b1;
								PCload <= 1'b1;
								INmux <= 1'b0;
								Aload <= 1'b0;
								JNZmux <= 1'b0;
								Halt <= 1'b0;
							end
				 decode : begin
								IRload <= 1'b0;
								PCload <= 1'b0;
								INmux <= 1'b0;
								Aload <= 1'b0;
								JNZmux <= 1'b0;
								Halt <= 1'b0;
							end
				 Input : begin
								IRload <= 1'b0;
								PCload <= 1'b0;
								INmux <= 1'b1;
								Aload <= 1'b1;
								JNZmux <= 1'b0;
								Halt <= 1'b0;
							end
				 Output : begin
								IRload <= 1'b0;
								PCload <= 1'b0;
								INmux <= 1'b0;
								Aload <= 1'b0;
								JNZmux <= 1'b0;
								Halt <= 1'b0;
							end
				 dec : begin
								IRload <= 1'b0;
								PCload <= 1'b0;
								INmux <= 1'b0;
								Aload <= 1'b1;
								JNZmux <= 1'b0;
								Halt <= 1'b0;
							end
				 jnz : begin
								if(Aneq0 == 1'b1)begin
									PCload <= 1'b1;
									IRload <= 1'b0;
									INmux <= 1'b0;
									Aload <= 1'b0;
									JNZmux <= 1'b1;
									Halt <= 1'b0;
								end else if(Aneq0 == 1'b0) begin 
									PCload <= 1'b0;
									IRload <= 1'b0;
								   INmux <= 1'b0;
								   Aload <= 1'b0;
								   JNZmux <= 1'b1;
								   Halt <= 1'b0;
								end
							end
				 halt : begin
								IRload <= 1'b0;
								PCload <= 1'b0;
								INmux <= 1'b0;
								Aload <= 1'b0;
								JNZmux <= 1'b0;
								Halt <= 1'b1;
							end
			 endcase
	 
		 end
		 
	 end
	 
	 assign op = state;

endmodule

