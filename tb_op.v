`timescale 1ns / 1ps

module tb_op;

	// Inputs
	reg [1:0] mode;
	reg Reset;
	reg Clk;
	reg IRload;
	reg PCload;
	reg ANSload;
	reg [1:0]JSM;
	reg select_mode;

	// Outputs
	wire [3:0] IRCU;
	wire [7:0] Output;

	// Instantiate the Unit Under Test (UUT)
	operations uut (
		.mode(mode),
		.Reset(Reset),
		.Clk(Clk), 
		.IRload(IRload), 
		.PCload(PCload), 
		.ANSload(ANSload), 
		.JSM(JSM), 
		.select_mode(select_mode), 
		.IRCU(IRCU), 
		.Output(Output)
	);

	initial begin

		mode = 0;
		Reset = 1;
		Clk = 0;
		IRload = 0;
		PCload = 0;
		ANSload = 0;
		JSM = 0;
		select_mode = 0;
		
		#100;
		
		mode = 6;
		Reset = 0;
		IRload = 1;
		PCload = 1;
		ANSload = 0;
		JSM = 2;
		select_mode = 2;
		
		#100;
		
		mode = 6;
		IRload = 0;
		PCload = 0;
		JSM = 2;
		
		#100;
		
		mode = 6;
		IRload = 1;
		PCload = 1;
		JSM = 1;
		
		#100;
		
		mode = 6;
		IRload = 1;
		PCload = 1;
		JSM = 0;

		#100;

	end
      	always #20 Clk = ~Clk;
endmodule

