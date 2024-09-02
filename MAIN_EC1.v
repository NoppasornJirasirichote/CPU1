`timescale 1ns / 1ps

module MAIN_EC1(
    input [7:0]Input,
    input Clock,
    input Reset,
    output Halt,
    output [7:0]Output,
	 output [2:0]state,
	 output [2:0]irout
    ); 
	
	wire inmux,aload,irload,pcload,jnzmux,aneq0;
	wire [2:0]ir,state;
	
	
	DATAPATH_EC1 dtp(.Input(Input),.INmux(inmux),.Aload(aload),.Reset(Reset),.Clk(Clock),.IRload(irload),.PCload(pcload),.JNZmux(jnzmux),.IR75(ir),.Aneq0(aneq0),.Output(Output));


	FSM_EC1 fsm(.ir75(ir),.op(state),.clk(Clock),.reset(Reset),.Aneq0(aneq0),.IRload(irload),.PCload(pcload),.INmux(inmux),.Aload(aload),.JNZmux(jnzmux),.Halt(Halt));

assign irout = ir;
endmodule
