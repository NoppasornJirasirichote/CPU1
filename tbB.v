`timescale 1ns / 1ps

module tbB;

	// Inputs
	reg [7:0] d0;
	reg [7:0] d1;
	reg B_select;

	// Outputs
	wire [7:0] op;

	// Instantiate the Unit Under Test (UUT)
	Bmux uut (
		.d0(d0), 
		.d1(d1), 
		.B_select(B_select), 
		.op(op)
	);

	initial begin
		// Initialize Inputs
		d0 = 5;
		d1 = 9;
		B_select = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

