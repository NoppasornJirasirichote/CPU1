`timescale 1ns / 1ps


module tbALU;

	// Inputs
	reg [7:0] A;
	reg [7:0] B;
	reg [2:0] select;

	// Outputs
	wire [7:0] op1;

	// Instantiate the Unit Under Test (UUT)
	ALUmain uut (
		.A(A), 
		.B(B), 
		.select(select), 
		.op1(op1)
	);

	initial begin
		// Initialize Inputs
		A = 4;
		B = 1;
		select = 2;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

