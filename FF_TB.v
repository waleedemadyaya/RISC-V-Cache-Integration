module FF_TB (    );

/********************** parameters **********************/

/********************** input reg declaration **********************/
reg [32-1 : 0] PCNext_TB;
reg            RST_TB , CLK_TB;

/********************** output wire declaration **********************/
wire [32-1 : 0] PC_TB;

/********************** internal wires **********************/






/********************** DUT instantiation **********************/

FF DUT( .PCNext( PCNext_TB) ,  .PC( PC_TB) , .CLK(CLK_TB) , .RST(RST_TB) );
/**********************   clock generation    **********************/
always  #10 CLK_TB = ~CLK_TB;

/**********************   INTIALIZATION    **********************/
    initial begin 
        CLK_TB = 0 ;
        RST_TB = 1;
        #1;
        RST_TB = 0;
        #1;
        RST_TB = 1;
        PCNext_TB = 4;
        #12
        PCNext_TB = 8;
        #12
        PCNext_TB = 16;
        #12
        PCNext_TB = 28;
        #12
        PCNext_TB = 60;

    end
endmodule
