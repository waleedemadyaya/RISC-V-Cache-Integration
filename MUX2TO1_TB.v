module MUX2TO1_TB (    );

/********************** parameters **********************/

/********************** input reg declaration **********************/
reg [32-1 : 0] IN0_TB;
reg [32-1 : 0] IN1_TB;
reg SEL_TB;

/********************** output wire declaration **********************/
wire [32-1 : 0] OUT_TB;

/********************** internal wires **********************/






/********************** DUT instantiation **********************/

MUX2TO1 DUT( .IN0( IN0_TB) , .IN1( IN1_TB) , .SEL( SEL_TB) ,  .OUT( OUT_TB)  );




/**********************   INTIALIZATION    **********************/
    initial begin 
        IN0_TB = 5;
        IN1_TB = 10;
        SEL_TB = 0;
        #5;
        IN0_TB = 5;
        IN1_TB = 10;
        SEL_TB = 1;
        #5;
        IN0_TB = 32'hFFFF_FFFF;
        IN1_TB = 10;
        SEL_TB = 0;
        #5;
        IN0_TB = 32'hFFFF_FFFF;
        IN1_TB = 10;
        SEL_TB = 1;
        #5;
        IN0_TB = 10;
        IN1_TB = 10;
        SEL_TB = 0;
        #5;
        IN0_TB = 0;
        IN1_TB = 10;
        SEL_TB = 0;
        #5;
        IN0_TB = 10;
        IN1_TB = 10;
        SEL_TB = 1;
        #5;

    end
endmodule
