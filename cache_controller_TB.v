module cache_controller_TB (    );

/********************** parameters **********************/

/********************** input declaration **********************/
reg [32 : 0] data_in ;
reg [9 : 0] Adr ;
reg [2 : 0] tag_in ;
reg valid_in , CLK , RST , read , write ;

/********************** output declaration **********************/
wire stall ;
wire hit1_miss0 ;
wire WE_cache , WE_mem ;
wire [2 : 0] tag ;
wire [1 : 0] offset ;
wire [9 : 0] mem_Adr ;
wire [4 : 0] block_num ;

/********************** internal wires **********************/






/********************** DUT instantiation **********************/

cache_controller DUT (.data_in(data_in) , .Adr(Adr) , .tag_in(tag_in) , .valid_in(valid_in) , .read(read) ,
                      .write(write) , .CLK(CLK) , .RST(RST) , .WE_cache(WE_cache) , .WE_mem(WE_mem) ,
                      .stall(stall) , .hit1_miss0(hit1_miss0) , .tag(tag) , .offset(offset) ,
                      .mem_Adr(mem_Adr) , .block_num(block_num) );
/**********************   clock generation    **********************/
always  #10 CLK = ~CLK;

/**********************   INTIALIZATION    **********************/
    initial begin 
        CLK = 0 ;

        RST = 1 ;
        #5;
        RST = 0 ;
        #5;
        RST = 1;
        #20
        
        data_in = 0 ;
        Adr = 0 ;
        tag_in = 0 ;
        valid_in = 0 ;
        read = 0 ;
        write = 0 ;
        #100;

        data_in = 0 ;
        Adr = 0 ;
        tag_in = 0 ;
        valid_in = 1 ;
        read = 1 ;
        write = 0 ;
        #100;

        data_in = 0 ;
        Adr = 0 ;
        tag_in = 1 ;
        valid_in = 1 ;
        read = 1 ;
        write = 0 ;
        #100;

        data_in = 0 ;
        Adr = 0 ;
        tag_in = 0 ;
        valid_in = 0 ;
        read = 1 ;
        write = 0 ;
        #100;

        data_in = 0 ;
        Adr = 0 ;
        tag_in = 0 ;
        valid_in = 0 ;
        read = 1 ;
        write = 0 ;
        #100;

        data_in = 5 ;
        Adr = 0 ;
        tag_in = 0 ;
        valid_in = 1 ;
        read = 0 ;
        write = 1 ;
        #100;

        data_in = 10 ;
        Adr = 0 ;
        tag_in = 1 ;
        valid_in = 1 ;
        read = 0 ;
        write = 1 ;
        #100;

        data_in = 15 ;
        Adr = 0 ;
        tag_in = 0 ;
        valid_in = 0 ;
        read = 0 ;
        write = 1 ;
        #100;

        data_in = 15 ;
        Adr = 20 ;
        tag_in = 1 ;
        valid_in = 1 ;
        read = 0 ;
        write = 1 ;
        #100;











    end
endmodule
