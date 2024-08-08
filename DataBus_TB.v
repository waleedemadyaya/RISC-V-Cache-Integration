module DataBus_TB (    );

/********************** parameters **********************/

/********************** input reg declaration **********************/
reg PCSrc_TB;
reg [1 : 0] ResultSrc1_0_TB;
reg MemWrite_TB;
reg [2 : 0] ALUControl2_0_TB;
reg ALUSrc_TB;
reg [1 : 0] ImmSrc1_0_TB;
reg RegWrite_TB;
reg CLK;
/********************** output wire declaration **********************/
wire [6 : 0] Instr6_0_TB;
wire [2 : 0] Instr14_12_TB;
wire Instr30_TB;

/********************** internal wires **********************/






/********************** DUT instantiation **********************/

DataBus DUT( .PCSrc( PCSrc_TB) , .ResultSrc1_0( ResultSrc1_0_TB) ,
             .MemWrite( MemWrite_TB) , .ALUControl2_0( ALUControl2_0_TB) ,
             .ALUSrc( ALUSrc_TB) , .ImmSrc1_0( ImmSrc1_0_TB) , .RegWrite( RegWrite_TB) ,
             .Instr6_0( Instr6_0_TB) ,  .Instr14_12( Instr14_12_TB) ,  .Instr30( Instr30_TB)  );
/**********************   clock generation    **********************/
always  #10 CLK = ~CLK;

/**********************   INTIALIZATION    **********************/
    initial begin 
        CLK = 0 ;










    end
endmodule
