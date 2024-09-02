`timescale 1ns / 1ps


module Test_EC1;

	// Inputs
	reg [7:0] Input;
	reg Clock;
	reg Reset;

	// Outputs
	wire Halt;
	wire [7:0] Output;
	wire [2:0] state;
	wire [2:0] irout;

	// Instantiate the Unit Under Test (UUT)
	MAIN_EC1 uut (
		.Input(Input), 
		.Clock(Clock), 
		.Reset(Reset), 
		.Halt(Halt), 
		.Output(Output),
		.state(state),
		.irout(irout)
	);
	
	always begin
		#10 Clock = ~Clock;
	end

	initial begin
		
		Clock = 0;
      
		#50;
		
		Input = 0;
		Reset = 1;

		#50;
		
		Input = 5;
		Reset = 0;

		#1000;
		
		
		

	end
      
endmodule

