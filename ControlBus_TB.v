module ControlBus_TB (    );

/********************** parameters **********************/

/********************** input reg declaration **********************/
reg funct7_5_TB;
reg [2 : 0] funct3_2_0_TB;
reg [6 : 0] OP6_0_TB;
reg Zero_TB;

/********************** output wire declaration **********************/
wire PCSrc_TB;
wire [1 : 0] ResultSrc1_0_TB;
wire MemWrite_TB;
wire ALUSrc_TB;
wire [1 : 0] ImmSrc1_0_TB;
wire RegWrite_TB;
wire [2 : 0] ALUControl2_0_TB;

/********************** internal wires **********************/






/********************** DUT instantiation **********************/

ControlBus DUT( .funct7_5( funct7_5_TB) , .funct3_2_0( funct3_2_0_TB) , .OP6_0( OP6_0_TB) , .Zero( Zero_TB) ,  .PCSrc( PCSrc_TB) ,  .ResultSrc1_0( ResultSrc1_0_TB) ,  .MemWrite( MemWrite_TB) ,  .ALUSrc( ALUSrc_TB) ,  .ImmSrc1_0( ImmSrc1_0_TB) ,  .RegWrite( RegWrite_TB) ,  .ALUControl2_0( ALUControl2_0_TB)  );




/**********************   INTIALIZATION    **********************/
    initial begin 

    end
endmodule
