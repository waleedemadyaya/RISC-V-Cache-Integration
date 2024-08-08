module RISC_V_TOP_LEVEL_TB (    );

/********************** parameters **********************/

/********************** input reg declaration **********************/
reg CLK_TB;
reg RST_TB;

/********************** output wire declaration **********************/

/********************** internal wires **********************/






/********************** DUT instantiation **********************/

RISC_V_TOP_LEVEL DUT( .CLK( CLK_TB) , .RST( RST_TB) );




/**********************   INTIALIZATION    **********************/
    initial begin 

    end
endmodule
