module ALU_TB (    );

/********************** parameters **********************/

/********************** input reg declaration **********************/
reg [32-1 : 0] SrcA_TB;
reg [32-1 : 0] SrcB_TB;
reg [3-1 : 0] ALUControl2_0_TB;

/********************** output wire declaration **********************/
wire [32-1 : 0] ALUResult_TB;
wire Zero_TB;

/********************** internal wires **********************/






/********************** DUT instantiation **********************/

ALU DUT( .SrcA( SrcA_TB) , .SrcB( SrcB_TB) , .ALUControl2_0( ALUControl2_0_TB) ,  .ALUResult( ALUResult_TB) ,  .Zero( Zero_TB)  );




/**********************   INTIALIZATION    **********************/
    initial 
    begin 
        SrcA_TB = 32'h0000_0000 ;
        SrcB_TB = 32'h0000_0000 ;
        ALUControl2_0_TB = 3'b000 ;
        #10
        SrcA_TB = 32'h0000_1100 ;
        SrcB_TB = 32'h1111_0000 ;
        ALUControl2_0_TB = 3'b000   ;
        #10
        SrcA_TB = 32'h0000_0000 ;
        SrcB_TB = 32'h0000_0000 ;
        ALUControl2_0_TB = 3'b001 ;
        #10
        SrcA_TB = 32'h0000_0000 ;
        SrcB_TB = 32'h0000_1100 ;
        ALUControl2_0_TB = 3'b001 ;
        #10
        SrcA_TB = 32'h0111_1100 ;
        SrcB_TB = 32'h0000_1010 ;
        ALUControl2_0_TB = 3'b001 ;
        #10
        SrcA_TB = 32'h0123_4231 ;
        SrcB_TB = 32'h0000_0000 ;
        ALUControl2_0_TB = 3'b001 ;
        #10
        SrcA_TB = 32'hFFFF_0000 ;
        SrcB_TB = 32'h0000_FFFF;
        ALUControl2_0_TB = 3'b010 ;
        #10
        SrcA_TB = 32'hFFFF_FFFF ;
        SrcB_TB = 32'hFFFF_FFFF ;
        ALUControl2_0_TB = 3'b010 ;
        #10
        SrcA_TB = 32'hFFFF_0000 ;
        SrcB_TB = 32'h0000_0000 ;
        ALUControl2_0_TB = 3'b011 ;
        #10
        SrcA_TB = 32'hA0A0_0C0C ;
        SrcB_TB = 32'h1234_4321 ;
        ALUControl2_0_TB = 3'b010 ;
        #10
        SrcA_TB = 32'h0000_0000 ;
        SrcB_TB = 32'h0000_0001 ;
        ALUControl2_0_TB = 3'b101 ;
        #10
        SrcA_TB = 32'h0000_0001 ;
        SrcB_TB = 32'h0000_0000 ;
        ALUControl2_0_TB = 3'b101 ;
        #10
        SrcA_TB = 32'h0000_0000 ;
        SrcB_TB = 32'h0000_0000 ;
        ALUControl2_0_TB = 3'b101 ;
    end

endmodule
