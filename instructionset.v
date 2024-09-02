`timescale 1ns / 1ps

module instructionset(
    input [7:0] InputA,
	 input [7:0] InputB,
    input Aload,
	 input Bload,
    input Reset,
    input Clk,
	 input ANSload,
	 input A_select,
	 input B_select,
	 input [1:0]select_mode,
    output [3:0] IRCU,
    output [7:0] Output
    );
	 
	 wire [7:0] Amuxw,Bmuxw,outA,outB,ALUout;
	 wire [3:0] IRPC,JSMout,in_out,PCout,romout;
	 wire [7:0] out;
	 
	 Amux muxA(.op(Amuxw),.d0(InputA),.d1(out),.A_select(A_select));
	 Bmux muxB(.op(Bmuxw),.d0(InputB),.d1(out),.B_select(B_select));
	 
	 regAA regA(.op(outA),.ip(Amuxw),.clk(Clk),.clear(Reset),.load(Aload));
	 registerB regB(.op(outB),.ip(Bmuxw),.clk(Clk),.clear(Reset),.load(Bload));
	 
	 ALUmain ALU(.op1(ALUout),.A(outA),.B(outB),.select(select_mode));
	 
	 register_Answer regAns(.op(out),.ip(ALUout),.clk(Clk),.clear(Reset),.load(ANSload));
	 
	 
	 assign Output = out;
	 


endmodule