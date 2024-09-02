`timescale 1ns / 1ps


module tb_dtp;

	// Inputs
	reg [7:0] Input;
	reg INmux;
	reg Aload;
	reg Reset;
	reg Clk;
	reg IRload;
	reg PCload;
	reg JNZmux;

	// Outputs
	wire [2:0] IR75;
	wire Aneq0;
	wire [7:0] Output;

	// Instantiate the Unit Under Test (UUT)
	DATAPATH_EC1 uut (
		.Input(Input), 
		.INmux(INmux), 
		.Aload(Aload), 
		.Reset(Reset), 
		.Clk(Clk), 
		.IRload(IRload), 
		.PCload(PCload), 
		.JNZmux(JNZmux), 
		.IR75(IR75), 
		.Aneq0(Aneq0), 
		.Output(Output)
	);
	
	always begin
	#10 Clk = ~Clk;
	end

	initial begin
		// Initialize Inputs
		Input = 0;
		INmux = 0;
		Aload = 0;
		Reset = 1;
		Clk = 0;
		IRload = 0;
		PCload = 0;
		JNZmux = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		
		Input = 0;
		INmux = 0;
		Aload = 0;
		Reset = 0;
		IRload = 1;
		PCload = 1;
		JNZmux = 0;

		// Wait 100 ns for global reset to finish
		#100;

	end
      
endmodule

