`timescale 1ns / 1ps


module tb_in;

	// Inputs
	reg [7:0] InputA;
	reg [7:0] InputB;
	reg Aload;
	reg Bload;
	reg Reset;
	reg Clk;
	reg ANSload;
	reg A_select;
	reg B_select;
	reg [1:0]select_mode;

	// Outputs
	wire [3:0] IRCU;
	wire [7:0] Output;

	// Instantiate the Unit Under Test (UUT)
	instructionset uut (
		.InputA(InputA), 
		.InputB(InputB), 
		.Aload(Aload), 
		.Bload(Bload), 
		.Reset(Reset), 
		.Clk(Clk), 
		.ANSload(ANSload), 
		.A_select(A_select), 
		.B_select(B_select), 
		.select_mode(select_mode), 
		.IRCU(IRCU), 
		.Output(Output)
	);

	initial begin
		// Initialize Inputs
		InputA = 0;
		InputB = 0;
		Aload = 0;
		Bload = 0;
		Reset = 1;
		Clk = 0;
		ANSload = 0;
		A_select = 0;
		B_select = 0;
		select_mode = 0;
		#100;
		
		InputA = 2;
		InputB = 5;
		Aload = 1;
		Bload = 1;
		Reset = 0;
		ANSload = 0;
		A_select = 0;
		B_select = 0;
		select_mode = 0;
		#100;
		
		Aload = 1;
		Bload = 1;
		ANSload = 0;
		A_select = 0;
		B_select = 0;
		select_mode = 0;
		#100;
		
		Aload = 1;
		Bload = 1;
		ANSload = 0;
		A_select = 0;
		B_select = 0;
		select_mode = 0;
		#100;
		
		Aload = 0;
		Bload = 0;
		ANSload = 1;
		A_select = 0;
		B_select = 0;
		select_mode = 0;
		#100;

        

	end
	always #20 Clk = ~Clk;
      
endmodule

