`timescale 1ns / 1ps


module tbA;

	// Inputs
	reg [7:0] d0;
	reg [7:0] d1;
	reg A_select;

	// Outputs
	wire [7:0] op;

	// Instantiate the Unit Under Test (UUT)
	Amux uut (
		.d0(d0), 
		.d1(d1), 
		.A_select(A_select), 
		.op(op)
	);

	initial begin
		// Initialize Inputs
		d0 = 9;
		d1 = 6;
		A_select = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

