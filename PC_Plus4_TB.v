module PC_Plus4_TB (    );

/********************** parameters **********************/

/********************** input reg declaration **********************/
reg [32-1 : 0] PC_TB;

/********************** output wire declaration **********************/
wire [32-1 : 0] PCPlus4_TB;

/********************** internal wires **********************/






/********************** DUT instantiation **********************/

PC_Plus4 DUT( .PC( PC_TB) ,  .PCPlus4( PCPlus4_TB)  );




/**********************   INTIALIZATION    **********************/
    initial begin 
        PC_TB = 0;
        #5
        PC_TB = 10;
        #5
        PC_TB = 25;
        #5
        PC_TB = 30;
        #5
        PC_TB = 22;
        #5
        PC_TB = 39;
        #5
        PC_TB = 77;
        #5
        PC_TB = 82;
        #5
        PC_TB = 35;
        #5;


    end
endmodule
