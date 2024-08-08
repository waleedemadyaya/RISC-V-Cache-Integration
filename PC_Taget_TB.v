module PC_Taget_TB (    );

/********************** parameters **********************/

/********************** input reg declaration **********************/
reg [31 : 0] PC_TB;
reg [31 : 0] ImmExt_TB;

/********************** output wire declaration **********************/
wire [31 : 0] PCTarget_TB;

/********************** internal wires **********************/






/********************** DUT instantiation **********************/

PC_Taget DUT( .PC( PC_TB) , .ImmExt( ImmExt_TB) ,  .PCTarget( PCTarget_TB)  );




/**********************   INTIALIZATION    **********************/
    initial begin 
        PC_TB = 32'h0000_0000;
        ImmExt_TB = 32'h0000_0000;
        #10;
        PC_TB = 32'h0000_AAFF;
        ImmExt_TB = 32'h1999_0000;
        #10;
        PC_TB = 32'h0000_AACC;
        ImmExt_TB = 32'h0850_0000;
        #10;
        PC_TB = 32'h0000_0000;
        ImmExt_TB = 32'h0000_0000;
        #10;
        PC_TB = 32'h6395_1895;
        ImmExt_TB = 32'h00AA_0000;
        #10;
        PC_TB = 32'h0000_9852;
        ImmExt_TB = 32'h0123_0000;
        #10;
    end
endmodule
