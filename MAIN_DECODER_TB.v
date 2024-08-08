module MAIN_DECODER_TB (    );

/********************** parameters **********************/

/********************** input reg declaration **********************/
reg [7-1 : 0] OP6_0_TB;
reg Zero_TB;

/********************** output wire declaration **********************/
wire PCSrc_TB;
wire [2-1 : 0] ResultSrc1_0_TB;
wire MemWrite_TB;
wire ALUSrc_TB;
wire [2-1 : 0] ImmSrc1_0_TB;
wire RegWrite_TB;
wire [2-1 : 0] ALUOP1_0_TB;

/********************** internal wires **********************/

/********************** DUT instantiation **********************/

MAIN_DECODER DUT( .OP6_0( OP6_0_TB) , .Zero( Zero_TB) ,  .PCSrc( PCSrc_TB) ,  .ResultSrc1_0( ResultSrc1_0_TB) ,  .MemWrite( MemWrite_TB) ,  .ALUSrc( ALUSrc_TB) ,  .ImmSrc1_0( ImmSrc1_0_TB) ,  .RegWrite( RegWrite_TB) ,  .ALUOP1_0( ALUOP1_0_TB)  );

/**********************   INTIALIZATION    **********************/
    initial begin 
        OP6_0_TB = 7'b0000011 ;
        Zero_TB = 1'b0;
        #5
        OP6_0_TB = 7'b0000011 ;
        Zero_TB = 1'b1;
        #5
        OP6_0_TB = 7'b0100011 ;
        Zero_TB = 1'b0;
        #5
        OP6_0_TB = 7'b0100011 ;
        Zero_TB = 1'b1;
        #5
        OP6_0_TB = 7'b0110011 ;
        Zero_TB = 1'b0;
        #5
        OP6_0_TB = 7'b0110011 ;
        Zero_TB = 1'b1;
        #5
        OP6_0_TB = 7'b1100011 ;
        Zero_TB = 1'b0;
        #5
        OP6_0_TB = 7'b1100011 ;
        Zero_TB = 1'b1;
        #5
        OP6_0_TB = 7'b0010011 ;
        Zero_TB = 1'b0;
        #5
        OP6_0_TB = 7'b0010011 ;
        Zero_TB = 1'b1;
        #5
        OP6_0_TB = 7'b1101111 ;
        Zero_TB = 1'b0;
        #5
        OP6_0_TB = 7'b1101111 ;
        Zero_TB = 1'b1;
        #5
        OP6_0_TB = 7'b0101010 ;
        Zero_TB = 1'b0;
        #5
        OP6_0_TB = 7'b0000100 ;
        Zero_TB = 1'b1;
        #5
        OP6_0_TB = 7'b0000000 ;
        Zero_TB = 1'b0;
        #5
        OP6_0_TB = 7'b1111111 ;
        Zero_TB = 1'b1;
    end
endmodule
