`timescale 1ns / 1ps

module tbcpu;

	// Inputs
	reg [7:0] InputA;
	reg [7:0] InputB;
	reg [1:0] mode;
	reg Aload;
	reg Bload;
	reg Reset;
	reg Clk;
	reg IRload;
	reg PCload;
	reg ANSload;
	reg JSM;
	reg A_select;
	reg B_select;
	reg select_mode;

	// Outputs
	wire [3:0] IRCU;
	wire [7:0] Output;

	// Instantiate the Unit Under Test (UUT)
	datapath uut (
		.InputA(InputA), 
		.InputB(InputB), 
		.mode(mode), 
		.Aload(Aload), 
		.Bload(Bload), 
		.Reset(Reset), 
		.Clk(Clk), 
		.IRload(IRload), 
		.PCload(PCload), 
		.ANSload(ANSload), 
		.JSM(JSM), 
		.A_select(A_select), 
		.B_select(B_select), 
		.select_mode(select_mode), 
		.IRCU(IRCU), 
		.Output(Output)
	);

	initial begin

		InputA = 0;
		InputB = 0;
		mode = 0;
		Aload = 0;
		Bload = 0;
		Reset = 1;
		Clk = 0;
		IRload = 0;
		PCload = 0;
		ANSload = 0;
		JSM = 0;
		A_select = 0;
		B_select = 0;
		select_mode = 0;

		#100;
		
		InputA = 0;
		InputB = 0;
		mode = 0;
		Aload = 0;
		Bload = 0;
		Reset = 0;
		IRload = 0;
		PCload = 0;
		ANSload = 0;
		JSM = 0;
		A_select = 0;
		B_select = 0;
		select_mode = 0;

		#100;
		
		InputA = 5;
		InputB = 3;
		mode = 0;
		Aload = 0;
		Bload = 0;
		Reset = 0;
		IRload = 1;
		PCload = 1;
		ANSload = 0;
		JSM = 0;
		A_select = 1;
		B_select = 1;
		select_mode = 0;

		#100;
		

		mode = 1;
		Aload = 0;
		Bload = 0;
		Reset = 0;
		ANSload = 0;
		JSM = 1;
		A_select = 0;
		B_select = 0;
		select_mode = 1;

		#100;
		

		Aload = 0;
		Bload = 0;
		Reset = 0;
		ANSload = 1;
		JSM = 0;
		A_select = 0;
		B_select = 0;
		select_mode = 0;

		#100;

	end
	
	always #20 Clk = ~Clk;
      
endmodule

