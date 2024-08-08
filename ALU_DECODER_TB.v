module ALU_DECODER_TB (    );

/********************** parameters **********************/

/********************** input reg declaration **********************/
reg [1 : 0] ALUOP1_0_TB;
reg OP_5_TB;
reg [2 : 0] funct3_2_0_TB;
reg funct7_5_TB;

/********************** output wire declaration **********************/
wire [2 : 0] ALUControl2_0_TB;

/********************** internal wires **********************/






/********************** DUT instantiation **********************/

ALU_DECODER DUT( .ALUOP1_0( ALUOP1_0_TB) , .OP_5( OP_5_TB) , .funct3_2_0( funct3_2_0_TB) , .funct7_5( funct7_5_TB) ,  .ALUControl2_0( ALUControl2_0_TB)  );




/**********************   INTIALIZATION    **********************/
    initial 
    begin 
        ALUOP1_0_TB = 2'b00;
        funct3_2_0_TB = 3'b110;
        OP_5_TB = 1'b0;
        funct7_5_TB = 1'b0;
        #10;
        ALUOP1_0_TB = 2'b00;
        funct3_2_0_TB = 3'b010;
        OP_5_TB = 1'b1;
        funct7_5_TB = 1'b0;
        #10;
        ALUOP1_0_TB = 2'b00;
        funct3_2_0_TB = 3'b011;
        OP_5_TB = 1'b1;
        funct7_5_TB = 1'b1;
        #10;
        ALUOP1_0_TB = 2'b00;
        funct3_2_0_TB = 3'b100;
        OP_5_TB = 1'b0;
        funct7_5_TB = 1'b1;
        #10;
        
        ALUOP1_0_TB = 2'b01;
        funct3_2_0_TB = 3'b111;
        OP_5_TB = 1'b0;
        funct7_5_TB = 1'b0;
        #10;
        ALUOP1_0_TB = 2'b01;
        funct3_2_0_TB = 3'b01
        ;
        OP_5_TB = 1'b1;
        funct7_5_TB = 1'b0;
        #10;
        ALUOP1_0_TB = 2'b01;
        funct3_2_0_TB = 3'b101;
        OP_5_TB = 1'b1;
        funct7_5_TB = 1'b1;
        #10;
        ALUOP1_0_TB = 2'b01;
        funct3_2_0_TB = 3'b00;
        OP_5_TB = 1'b0;
        funct7_5_TB = 1'b1;
        #10;

        ALUOP1_0_TB = 2'b10;
        funct3_2_0_TB = 3'b101;
        OP_5_TB = 1'b0;
        funct7_5_TB = 1'b1;
        #10;
        ALUOP1_0_TB = 2'b10;
        funct3_2_0_TB = 3'b010;
        OP_5_TB = 1'b1;
        funct7_5_TB = 1'b0;
        #10;
        ALUOP1_0_TB = 2'b10;
        funct3_2_0_TB = 3'b110;
        OP_5_TB = 1'b1;
        funct7_5_TB = 1'b1;
        #10;
        ALUOP1_0_TB = 2'b10;
        funct3_2_0_TB = 3'b000;
        OP_5_TB = 1'b0;
        funct7_5_TB = 1'b1;
        #10;
        
        ALUOP1_0_TB = 2'b11;
        funct3_2_0_TB = 3'b101;
        OP_5_TB = 1'b0;
        funct7_5_TB = 1'b1;
        #10;
        ALUOP1_0_TB = 2'b11;
        funct3_2_0_TB = 3'b010;
        OP_5_TB = 1'b1;
        funct7_5_TB = 1'b0;
        #10;
        ALUOP1_0_TB = 2'b11;
        funct3_2_0_TB = 3'b110;
        OP_5_TB = 1'b1;
        funct7_5_TB = 1'b1;
        #10;
        ALUOP1_0_TB = 2'b11;
        funct3_2_0_TB = 3'b000;
        OP_5_TB = 1'b0;
        funct7_5_TB = 1'b1;

    end
endmodule
