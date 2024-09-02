`timescale 1ns / 1ps

module DATAPATH_EC1(
    input [7:0] Input,
    input INmux,
    input Aload,
    input Reset,
    input Clk,
    input IRload,
    input PCload,
    input JNZmux,
    output [2:0] IR75,
    output Aneq0,
    output reg[7:0] Output
    );

	 wire [7:0] Amux,DecA,OutRom,Hold;
	 wire [3:0] IR30,JNZout,Incre,PCout;
	 reg Aneq0;
		
		always@(*) begin
	   Output = Hold;
		if(Hold != 0)
		begin
			Aneq0 = 1;
		end
		else if(Hold == 0)
		begin
			Aneq0 = 0;
		end
	 end
		
	 mux2to1 muxA(.op(Amux),.d0(DecA),.d1(Input),.sel(INmux));
	 
	 registerA_8bits regA(.op(Hold),.ip(Amux),.clk(Clk),.clear(Reset),.load(Aload));
	 
	 decrement dec(.op(DecA),.ip(Hold));
	 
	 PC programCounter(.Output(PCout),.Input(JNZout),.clk(Clk),.clear(Reset),.load(PCload));
	 
	 ROM InstructionRom(.Output(OutRom),.Address(PCout),.clk(Clk));
	 
	 IR IRinstruction(.IR3(IR75),.IR4(IR30),.Input(OutRom),.load(IRload),.clear(Reset),.clk(Clk));
	 
	 mux2to1_4bits JNZ(.op(JNZout),.d0(Incre),.d1(IR30) ,.sel(JNZmux));
	 
	 increment in1(.op(Incre),.ip(PCout));

endmodule
