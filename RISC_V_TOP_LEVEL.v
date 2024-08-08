module RISC_V (CLK , RST );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire CLK;
input wire RST;

/********************** output declaration **********************/

/********************** internal wires **********************/
wire Instr30;
wire [2 : 0] Instr14_12;
wire [6 : 0] Instr6_0;
wire Zero;
wire PCSrc;
wire [1 : 0] ResultSrc1_0;
wire MemWrite;
wire ALUSrc;
wire [1 : 0] ImmSrc1_0;
wire RegWrite , MemRead;
wire [2 : 0] ALUControl2_0;


/**********************   descriptin   **********************/
ControlBus ControlBus1 (.funct7_5(Instr30) , .MemRead(MemRead) , .funct3_2_0(Instr14_12) , .OP6_0(Instr6_0) , .Zero(Zero) , 
            .PCSrc(PCSrc) , .ResultSrc1_0(ResultSrc1_0) , .MemWrite(MemWrite) , .ALUSrc(ALUSrc) , .ImmSrc1_0(ImmSrc1_0) , .RegWrite(RegWrite) , .ALUControl2_0(ALUControl2_0) );

DataBus DataBus1 ( .PCSrc(PCSrc) , .MemRead(MemRead) , .ResultSrc1_0(ResultSrc1_0) , .MemWrite(MemWrite) , .ALUControl2_0(ALUControl2_0) , .ALUSrc(ALUSrc) , .ImmSrc1_0(ImmSrc1_0) , .RegWrite(RegWrite) , 
            .Instr6_0(Instr6_0) , .Instr14_12(Instr14_12) , .Instr30(Instr30) , .CLK(CLK) , .RST(RST) , .Zero(Zero) );




endmodule
