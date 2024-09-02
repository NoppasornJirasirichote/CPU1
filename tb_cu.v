`timescale 1ns / 1ps

module tb_cu;

	// Inputs
	reg clk;
	reg reset;
	reg Aneq0;
	reg [2:0] ir75;

	// Outputs
	wire IRload;
	wire PCload;
	wire INmux;
	wire Aload;
	wire JNZmux;
	wire Halt;

	// Instantiate the Unit Under Test (UUT)
	FSM_EC1 uut (
		.clk(clk), 
		.reset(reset), 
		.Aneq0(Aneq0), 
		.ir75(ir75), 
		.IRload(IRload), 
		.PCload(PCload), 
		.INmux(INmux), 
		.Aload(Aload), 
		.JNZmux(JNZmux), 
		.Halt(Halt)
	);

	always begin
		#10 clk = ~clk;
	end

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 1;
		Aneq0 = 0;
		ir75 = 0;
		#100;
        
		reset = 0;
		Aneq0 = 0;
		ir75 = 110;
		#100;

	end
      
endmodule

