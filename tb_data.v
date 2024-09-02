`timescale 1ns / 1ps

module tb_data;

	// Inputs
	reg [7:0] InputA;
	reg [7:0] InputB;
	reg Aload;
	reg Bload;
	reg [3:0] mode;
	reg Reset;
	reg Clk;
	reg IRload;
	reg PCload;
	reg ANSload;
	reg [1:0] JSM;
	reg [1:0]select_mode;

	// Outputs
	wire [3:0] IRCU;
	wire [7:0] Output;

	// Instantiate the Unit Under Test (UUT)
	datapath uut (
		.InputA(InputA), 
		.InputB(InputB), 
		.Aload(Aload), 
		.Bload(Bload), 
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
		/*// Initialize Inputs
		/*InputA = 0;
		InputB = 0;
		Aload = 0;
		Bload = 0;
		mode = 0;
		Reset = 1;
		Clk = 0;
		IRload = 0;
		PCload = 0;
		ANSload = 0;
		JSM = 0;
		select_mode = 0;

		#100;
		
		InputA = 5;
		InputB = 1;
		Aload = 1;
		Bload = 1;
		mode = 6;
		Reset = 0;
		IRload = 1;
		PCload = 1;
		ANSload = 1;
		JSM = 0;
		select_mode = 1;

		#100;

		Aload = 1;
		Bload = 1;
		ANSload = 1;
		JSM = 2;
		

		#100;
		//////////////////////////////
		
		
		mode = 0;
		Reset = 1;
		Clk = 0;
		IRload = 0;
		PCload = 0;
		ANSload = 0;
		JSM = 0;
		select_mode = 0;
		
		#100;
		
		InputA = 5;
		InputB = 1;
		Aload = 1;
		Bload = 1;
		mode = 6;
		Reset = 0;
		IRload = 1;
		PCload = 1;
		ANSload = 1;
		JSM = 0;
		select_mode = 1;

		#100;
		
		mode = 6;
		Reset = 0;
		IRload = 1;
		PCload = 1;
		ANSload = 0;
		JSM = 0;
		select_mode = 0;
		
		#100;
		
		mode = 6;
		IRload = 1;
		PCload = 1;
		JSM = 2;
		select_mode = 1;
		ANSload = 1;
		#100;
		
		mode = 6;
		IRload = 1;
		PCload = 1;
		select_mode = 1;
		ANSload = 1;
		#100;
		
		mode = 6;
		IRload = 1;
		PCload = 1;
		select_mode = 1;
		ANSload = 1;

		#100;

        

	end
      	always #20 Clk = ~Clk;
endmodule*/

		mode = 0;
		Reset = 1;
		Clk = 0;
		IRload = 0;
		PCload = 0;
		ANSload = 0;
		JSM = 0;
		select_mode = 0;
		
		#100;
		
		InputA = 5;
		InputB = 1;
		Aload = 1;
		Bload = 1;
		mode = 6;
		Reset = 0;
		IRload = 1;
		PCload = 1;
		ANSload = 1;
		JSM = 0;
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

