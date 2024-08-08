module Extend_TB (    );

/********************** parameters **********************/

/********************** input reg declaration **********************/
reg [2-1 : 0] ImmSrc1_0_TB;
reg [25-1 : 0] Instr31_7_TB;

/********************** output wire declaration **********************/
wire [32-1 : 0] ImmExt_TB;

/********************** internal wires **********************/






/********************** DUT instantiation **********************/

Extend DUT( .ImmSrc1_0( ImmSrc1_0_TB) , .Instr31_7( Instr31_7_TB) ,  .ImmExt( ImmExt_TB)  );




/**********************   INTIALIZATION    **********************/
    initial begin 
        ImmSrc1_0_TB = 2'b00 ;
        Instr31_7_TB = 25'h00_ABCD ;
        #10;
        ImmSrc1_0_TB = 2'b01 ;
        Instr31_7_TB = 25'h00_ABCD ;
        #10;
        ImmSrc1_0_TB = 2'b10 ;
        Instr31_7_TB = 25'h00_ABCD ;
        #10;
        ImmSrc1_0_TB = 2'b11 ;
        Instr31_7_TB = 25'h00_ABCD ;
        #10;
        ImmSrc1_0_TB = 2'b00 ;
        Instr31_7_TB = 25'h00_A0CD ;
        #10;
        ImmSrc1_0_TB = 2'b01 ;
        Instr31_7_TB = 25'h09_ABCD ;
        #10;
        ImmSrc1_0_TB = 2'b10 ;
        Instr31_7_TB = 25'h00_AB4D ;
        #10;
        ImmSrc1_0_TB = 2'b11 ;
        Instr31_7_TB = 25'h00_A77D ;
        #10;
        ImmSrc1_0_TB = 2'b00 ;
        Instr31_7_TB = 25'h00_A68D ;
        #10;
        ImmSrc1_0_TB = 2'b01 ;
        Instr31_7_TB = 25'h00_75CD ;
        #10;
    end
endmodule
