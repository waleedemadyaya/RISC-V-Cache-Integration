module cache_top_TB (    );

/********************** parameters **********************/

/********************** input reg declaration **********************/
reg CLK_TB , RST_TB;
reg MemRead_TB;
reg MemWrite_TB;
reg [9 : 0] WoreAddress_TB;
reg [31 : 0] DataIn_TB;

/********************** output wire declaration **********************/
wire Stall_TB;
wire [31 : 0] DataOut_TB;

/********************** internal wires **********************/






/********************** DUT instantiation **********************/

cache_top DUT ( .CLK( CLK_TB) , .RST( RST_TB ) , .MemRead( MemRead_TB) , .MemWrite( MemWrite_TB) ,
               .WoreAddress( WoreAddress_TB) , .DataIn( DataIn_TB) ,  .stall( Stall_TB) ,  .DataOut( DataOut_TB)  );

always #5 CLK_TB = ~CLK_TB ;


/**********************   INTIALIZATION    **********************/
    initial begin 
        CLK_TB = 1;
        RST_TB = 1 ;
        #1;
        RST_TB = 0 ;
        #1;
        RST_TB = 1 ;
        #3

        #5;
        MemRead_TB = 0 ;
        MemWrite_TB = 0;
        WoreAddress_TB = 0;
        DataIn_TB = 0;

        #10;
        MemRead_TB = 0 ;
        MemWrite_TB = 1 ;
        WoreAddress_TB = 10'h3ff ;
        DataIn_TB = 32'h3ff;

        #50;
        MemRead_TB = 0 ;
        MemWrite_TB = 1 ;
        WoreAddress_TB = 10'h3fe ;
        DataIn_TB = 32'h3fe;

        #50;
        MemRead_TB = 0 ;
        MemWrite_TB = 1 ;
        WoreAddress_TB = 10'h3fd ;
        DataIn_TB = 32'h3fd;

        #50;
        MemRead_TB = 0 ;
        MemWrite_TB = 1 ;
        WoreAddress_TB = 10'h3fc ;
        DataIn_TB = 32'h3fc;

        #50;
        MemRead_TB = 0 ;
        MemWrite_TB = 1 ;
        WoreAddress_TB = 10'h3fb ;
        DataIn_TB = 32'h3fb;

        #50;
        MemRead_TB = 0 ;
        MemWrite_TB = 1 ;
        WoreAddress_TB = 10'h3fa ;
        DataIn_TB = 32'h3fa;

        #50;
        MemRead_TB = 0 ;
        MemWrite_TB = 1 ;
        WoreAddress_TB = 10'h3f9 ;
        DataIn_TB = 32'h3f9;

        #50;
        MemRead_TB = 0 ;
        MemWrite_TB = 1 ;
        WoreAddress_TB = 10'h3f8 ;
        DataIn_TB = 32'h3f8 ;

        #50;
        MemRead_TB = 0 ;
        MemWrite_TB = 1 ;
        WoreAddress_TB = 10'h3f7 ;
        DataIn_TB = 32'h3f7 ;

        #50;
        MemRead_TB = 0 ;
        MemWrite_TB = 1 ;
        WoreAddress_TB = 10'h3f6 ;
        DataIn_TB = 32'h3f6 ;

        #50;
        MemRead_TB = 0 ;
        MemWrite_TB = 1 ;
        WoreAddress_TB = 10'h3f5 ;
        DataIn_TB = 32'h3f5 ;

        #50;
        MemRead_TB = 0 ;
        MemWrite_TB = 1 ;
        WoreAddress_TB = 10'h3f4 ;
        DataIn_TB = 32'h3f4 ;

        #50;
        MemRead_TB = 1 ;
        MemWrite_TB = 0 ;
        WoreAddress_TB = 10'h3ff ;
        DataIn_TB = 32'h0 ;

        #50;
        MemRead_TB = 1 ;
        MemWrite_TB = 0 ;
        WoreAddress_TB = 10'h3f9 ;
        DataIn_TB = 32'h0 ;

        #50;
        MemRead_TB = 1 ;
        MemWrite_TB = 0 ;
        WoreAddress_TB = 10'h3f5 ;
        DataIn_TB = 32'h0 ;

        #50;
        MemRead_TB = 1 ;
        MemWrite_TB = 0 ;
        WoreAddress_TB = 10'h3fe ;
        DataIn_TB = 32'h0 ;

        #50;
        MemRead_TB = 1 ;
        MemWrite_TB = 0 ;
        WoreAddress_TB = 10'h3f8 ;
        DataIn_TB = 32'h0 ;

        #50;
        MemRead_TB = 1 ;
        MemWrite_TB = 0 ;
        WoreAddress_TB = 10'h3f6 ;
        DataIn_TB = 32'h0 ;


        #50;



    end
endmodule
