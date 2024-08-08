module DataBus (PCSrc , ResultSrc1_0 , MemWrite , MemRead , ALUControl2_0 , ALUSrc , ImmSrc1_0 , RegWrite , CLK , RST ,
            Instr6_0 , Instr14_12 , Instr30 , Zero );

/**********************    parameters     **********************/

/********************** input declaration **********************/
input wire PCSrc, CLK , RST ;
input wire [1 : 0] ResultSrc1_0;
input wire MemWrite , MemRead;
input wire [2 : 0] ALUControl2_0;
input wire ALUSrc;
input wire [1 : 0] ImmSrc1_0;
input wire RegWrite;

/********************** output declaration **********************/
output wire [6 : 0] Instr6_0;
output wire [2 : 0] Instr14_12;
output wire Instr30 , Zero ;

/**********************   internal wires   **********************/
wire [31 : 0] PCNext ,
              PC ,
              Instr ,
              PCPlus4 ,
              Result ,
              ImmExt,
              SrcA ,
              SrcB ,
              ALUResult ,
              WriteData ,
              ReadData ,
              PCTarget;
wire stall;

/**********************     descriptin     **********************/
MUX2TO1 MUX0 (.IN0(PCPlus4) , .IN1(PCTarget) , .SEL(PCSrc) , .OUT(PCNext) );
FF FF1 ( .PCNext(PCNext) , .RST(RST) , .CLK(CLK) , .PC(PC) );
Instruction_Memory Instruction_Memory1 ( .A(PC) , .RD(Instr) );
PC_Plus4 PC_Plus4_1 ( .PC(PC) , .PCPlus4(PCPlus4) , .stall(stall) );
Extend Extend1 ( .ImmSrc1_0(ImmSrc1_0) , .Instr31_7(Instr[31:7]) , .ImmExt(ImmExt) );
Register_File Register_File1 ( .A1(Instr[19:15]) , .A2(Instr[24:20]) , .A3(Instr[11:7]) , .WD(Result) , .WE(RegWrite) , .CLK(CLK) , .RST(RST) , .RD1(SrcA) , .RD2(WriteData) );
MUX2TO1 MUX1 (.IN0(WriteData) , .IN1(ImmExt) , .SEL(ALUSrc) , .OUT(SrcB) );
PC_Taget PC_Taget1 ( .PC(PC) , .ImmExt(ImmExt) ,  .PCTarget(PCTarget) );
ALU ALU1 ( .SrcA(SrcA) , .SrcB(SrcB) , .ALUControl2_0(ALUControl2_0) , .ALUResult(ALUResult) , .Zero(Zero) );

//Data_Memory Data_Memory1 ( .A(ALUResult) , .WD(WriteData) , .WE(MemWrite) , .CLK(CLK) , .RD(ReadData) );
cache_top CACHE1 (.CLK(CLK) , .MemRead(MemRead) , .MemWrite(MemWrite) , .WoreAddress(ALUResult[9:0]) , .DataIn(WriteData) , .RST(RST) ,
            .stall(stall) , .DataOut(ReadData) );
MUX3TO1 MUX3TO1_1 ( .IN0(ALUResult) , .IN1(ReadData) , .IN3(PCPlus4) , .SEl(ResultSrc1_0) , .OUT(Result) );
assign Instr6_0 = Instr[6:0];
assign Instr14_12 = Instr[14:12];
assign Instr30 = Instr[30];

endmodule
