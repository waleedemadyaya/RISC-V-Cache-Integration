module Instruction_Memory_TB (    );

/********************** parameters **********************/

/********************** input reg declaration **********************/
reg [32-1 : 0] A_TB;

/********************** output wire declaration **********************/
wire [32-1 : 0] RD_TB;

/********************** internal wires **********************/
integer i ;

/********************** DUT instantiation **********************/

Instruction_Memory DUT( .A( A_TB) ,  .RD( RD_TB)  );




/**********************   INTIALIZATION    **********************/
    initial begin 
    for (i=0 ; i<255 ; i=i+1)
    begin
        A_TB =255 - i;
        #10;
    end
    end
endmodule
