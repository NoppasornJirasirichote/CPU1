`timescale 1ns / 1ps

module tbrom;

	// Inputs
	reg [3:0] Address;
	reg clk;

	// Outputs
	wire [7:0] Output;

	// Instantiate the Unit Under Test (UUT)
	romcpu uut (
		.Address(Address), 
		.clk(clk), 
		.Output(Output)
	);

	always #20 clk = ~clk;
	initial begin
		// Initialize Inputs
		Address = 0;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
		
		Address = 5;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

