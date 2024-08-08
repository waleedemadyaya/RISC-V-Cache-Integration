module cache_top (CLK , MemRead , MemWrite , WoreAddress , DataIn , RST ,
            stall , DataOut );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire CLK , RST;
input wire MemRead;
input wire MemWrite;
input wire [9 : 0] WoreAddress;
input wire [31 : 0] DataIn;

/********************** output declaration **********************/
output wire stall;
output wire [31 : 0] DataOut;

/********************** internal wires **********************/
wire [31 : 0] data_to_cache , data_from_mem ;
wire [9 : 0] mem_Adr ;
wire [4 : 0] block_num ;
wire [1 : 0] byte_offset ;
wire [2 : 0] tag , tag_ca_con ;
wire WE_cache , valid_ca_con , WE_mem , valid ;
/**********************   descriptin   **********************/

cache_memory CACH_INSTANCE (.data_in( data_to_cache ) , .block_num(block_num) , .byte_offset(byte_offset) ,
                            .WE(WE_cache) , .in_tag(tag) , .in_valid(valid) , .CLK( CLK ) , .RST( RST ) ,
                             .data_out( DataOut ) , .out_tag(tag_ca_con) , .out_valid(valid_ca_con) );

Data_Memory DATA_INSRANCE (.A(mem_Adr) , .WD( DataIn ) , .WE(WE_mem) , .CLK(CLK) , .RD(data_from_mem) );

cache_controller CONTROL_INST (.Adr(WoreAddress) , .tag_in(tag_ca_con) , .valid_in(valid_ca_con) , .read(MemRead) , .write(MemWrite) ,
                               .CLK(CLK) , .RST(RST) , .WE_cache(WE_cache) , .WE_mem(WE_mem) , .stall(stall) , .hit1_miss0() , .tag(tag) ,
                               .Add_offset(byte_offset) , .mem_Adr(mem_Adr) , .block_num(block_num) , .valid_out(valid) );


assign data_to_cache = (MemRead == 0) ? DataIn : data_from_mem;


endmodule
