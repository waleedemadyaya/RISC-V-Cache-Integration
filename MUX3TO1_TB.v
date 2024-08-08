module MUX3TO1_TB (    );

/********************** parameters **********************/

/********************** input reg declaration **********************/
reg [31 : 0] ALUResult_TB;
reg [31 : 0] ReadData_TB;
reg [31 : 0] PCPlus4_TB;
reg [1 : 0] ResultSrc1_0_TB;

/********************** output wire declaration **********************/
wire [31 : 0] Reslult_TB;
/********************** internal wires **********************/

/********************** DUT instantiation **********************/
MUX3TO1 DUT( .IN0( ALUResult_TB) , .IN1( ReadData_TB) , .IN2( PCPlus4_TB), .SEL(ResultSrc1_0_TB) ,  .OUT( Reslult_TB)  );
/**********************   INTIALIZATION    **********************/
    initial begin 
        ALUResult_TB = 32'd1 ;
        ReadData_TB = 32'd2 ;
        PCPlus4_TB = 32'd3 ;
        ResultSrc1_0_TB = 2'b00 ;
        #10;
        ALUResult_TB = 32'd1 ;
        ReadData_TB = 32'd2 ;
        PCPlus4_TB = 32'd3 ;
        ResultSrc1_0_TB = 2'b01 ;
        #10;
        ALUResult_TB = 32'd1 ;
        ReadData_TB = 32'd2 ;
        PCPlus4_TB = 32'd3 ;
        ResultSrc1_0_TB = 2'b10 ;
        #10;
        ALUResult_TB = 32'd1 ;
        ReadData_TB = 32'd2 ;
        PCPlus4_TB = 32'd3 ;
        ResultSrc1_0_TB = 2'b11 ;
        #10;
        ALUResult_TB = 32'd1 ;
        ReadData_TB = 32'd2 ;
        PCPlus4_TB = 32'd3 ;
        ResultSrc1_0_TB = 2'b00 ;
        #10;

    end
endmodule
