module Register_File_TB (    );

/********************** parameters **********************/

/********************** input reg declaration **********************/
reg [4 : 0] A1_TB;
reg [4 : 0] A2_TB;
reg [4 : 0] A3_TB;
reg [31 : 0] WD_TB;
reg WE_TB;
reg CLK_TB;

/********************** output wire declaration **********************/
wire [31 : 0] RD1_TB;
wire [31 : 0] RD2_TB;

/********************** internal wires **********************/
integer i;


/********************** DUT instantiation **********************/
Register_File DUT( .A1( A1_TB) , .A2( A2_TB) , .A3( A3_TB) , .WD( WD_TB) , .WE( WE_TB) , .CLK( CLK_TB) ,  .RD1( RD1_TB) ,  .RD2( RD2_TB)  );

/********************** CLK GENERATION **********************/
always #10 CLK_TB = ~CLK_TB; 
/**********************   INTIALIZATION    **********************/
    initial 
    begin

        CLK_TB = 0;

        for (i=0 ; i<= 31 ; i = i+1 )
        begin
            #2
            A1_TB = 0 ;
            A2_TB = 0 ;
            A3_TB = i ;
            WD_TB = i ;
            WE_TB = 1'b1;
            #20;
        end
        for (i=0 ; i<= 31 ; i = i+1 )
        begin
             #2 
            A1_TB = i ;
            A2_TB = 31 - i ;
            A3_TB = 5'b0_0000 ;
            WD_TB = 5'b0_0000 ;
            WE_TB = 1'b0;
            #20;
        end
        
    end
endmodule
