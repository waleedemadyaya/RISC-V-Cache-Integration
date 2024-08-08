module Data_Memory_TB (    );

/********************** parameters **********************/

/********************** input reg declaration **********************/
reg [9 : 0] A_TB;
reg [31 : 0] WD_TB;
reg WE_TB;
reg CLK_TB;

/********************** output wire declaration **********************/
wire [31 : 0] RD_TB;

/********************** internal wires **********************/
integer i = 0;

/********************** DUT instantiation **********************/

Data_Memory DUT( .A( A_TB) , .WD( WD_TB) , .WE( WE_TB) ,  .RD( RD_TB) , .CLK(CLK_TB));
/**********************   clock generation    **********************/
always  #10 CLK_TB = ~CLK_TB;

/**********************   INTIALIZATION    **********************/
    initial begin 
        CLK_TB = 0 ;
        WE_TB = 1'b1;
        for (i=0 ; i<256 ; i=i+1)
        begin
            A_TB = i ;
            WD_TB = 255-i;
            #15;
        end
        WE_TB = 1'b0;
        for (i=0 ; i<256 ; i=i+1)
        begin
            A_TB = i ;
            WD_TB = 0;
            #15;
        end
    end
endmodule
