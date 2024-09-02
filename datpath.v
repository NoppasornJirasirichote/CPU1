`timescale 1ns / 1ps

module datapath(

    input [7:0] InputA,
	 input [7:0] InputB,
	 input A_select,
	 input B_select,
    input Aload,
	 input Bload,
	 input [3:0] mode,
	 input Reset,
    input Clk,
    input IRload,
    input PCload,
	 input ANSload,
    input [1:0]JSM,
	 input [1:0]select_mode,
    output [3:0] IRCU,
    output [7:0] Output
    );
	 
	 wire [7:0] Amuxw,Bmuxw,outA,outB,ALUout,romout;
	 wire [3:0] IRPC,JSMout,in_out,PCout;
	 wire [7:0] out;
	 
	 Amux muxA(.op(Amuxw),.d0(InputA),.d1(out),.A_select(A_select));
	 Bmux muxB(.op(Bmuxw),.d0(InputB),.d1(out),.B_select(B_select));
	 
	 regAA regA(.op(outA),.ip(Amuxw),.clk(Clk),.clear(Reset),.load(Aload));
	 registerB regB(.op(outB),.ip(Bmuxw),.clk(Clk),.clear(Reset),.load(Bload));
	 
	 ALUmain ALU(.A(outA),.B(outB),.select(select_mode),.op1(ALUout));
	 
	 register_Answer regAns(.op(out),.ip(ALUout),.clk(Clk),.clear(Reset),.load(ANSload));
	 
	 ////////////////////////////////////////////////////////////////////////////////////////////////////////
	 
	 romcpu rom(.Output(romout),.Address(PCout),.clk(Clk));
	 ircpu ir(.Input(romout),.IRcu(IRCU),.IRpc(IRPC),.load(IRload),.clear(Reset),.clk(Clk));
	 mux3 muxJSM(.op(JSMout),.d0(in_out),.d1(IRPC),.d2(mode),.sel(JSM));
	 PCcpu pc(.Output(PCout),.Input(JSMout),.clk(Clk),.clear(Reset),.load(PCload));
	 incre in(.op(in_out),.ip(PCout));
	 
	 assign Output = out;
	 


endmodule
