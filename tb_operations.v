`timescale 1ns / 1ps
module operations(

	 input [1:0] mode,
	 input Reset,
    input Clk,
    input IRload,
    input PCload,
	 input ANSload,
    input [1:0]JSM,
	 input select_mode,
    output [3:0] IRCU,
    output [7:0] Output
    );
	 
	 wire [7:0] Amuxw,Bmuxw,outA,outB,ALUout,romout;
	 wire [3:0] IRPC,JSMout,in_out,PCout;
	 wire [7:0] out;
	 
	 romcpu rom(.Output(romout),.Address(PCout),.clk(Clk));
	 ircpu ir(.Input(romout),.IRcu(IRCU),.IRpc(IRPC),.load(IRload),.clear(Reset),.clk(Clk));
	 mux3 muxJSM(.op(JSMout),.d0(in_out),.d1(IRPC),.d2(mode),.sel(JSM));
	 PCcpu pc(.Output(PCout),.Input(JSMout),.clk(Clk),.clear(Reset),.load(PCload));
	 incre in(.op(in_out),.ip(PCout));
	
	 


endmodule
