module ControlBus (funct7_5 , funct3_2_0 , OP6_0 , Zero , MemRead ,
            PCSrc , ResultSrc1_0 , MemWrite , ALUSrc , ImmSrc1_0 , RegWrite , ALUControl2_0 );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire funct7_5;
input wire [2 : 0] funct3_2_0;
input wire [6 : 0] OP6_0;
input wire Zero;

/********************** output declaration **********************/
output wire PCSrc , MemRead;
output wire [1 : 0] ResultSrc1_0;
output wire MemWrite;
output wire ALUSrc;
output wire [1 : 0] ImmSrc1_0;
output wire RegWrite;
output wire [2 : 0] ALUControl2_0;

/********************** internal wires **********************/
wire [1:0] ALUOp1_0;

/**********************   descriptin   **********************/
MAIN_DECODER MAIN_DECODER_Ins (.OP6_0(OP6_0) , .MemRead(MemRead) , .Zero(Zero) , .PCSrc(PCSrc) , .ResultSrc1_0(ResultSrc1_0) ,
                               .MemWrite(MemWrite) , .ALUSrc(ALUSrc) , .ImmSrc1_0(ImmSrc1_0) , .RegWrite(RegWrite) , .ALUOP1_0(ALUOp1_0) );
ALU_DECODER ALU_DECODER_Ins (.ALUOP1_0(ALUOp1_0) , .OP_5(OP6_0[5]) , .funct3_2_0(funct3_2_0) , .funct7_5(funct7_5) , .ALUControl2_0(ALUControl2_0) );



endmodule
