module cache_memory_TB (    );

/********************** parameters **********************/

/********************** input reg declaration **********************/
reg [31 : 0] data_in_TB;
reg [4 : 0] block_num_TB;
reg [1 : 0] byte_offset_TB;
reg in_valid_TB;
reg [2 : 0] in_tag_TB;
reg WE_TB , CLK_TB , RST_TB;

/********************** output wire declaration **********************/
wire [31 : 0] data_out_TB;
wire [2 : 0] out_tag_TB;
wire out_valid_TB;
/********************** internal wires **********************/






/********************** DUT instantiation **********************/
cache_memory DUT (.data_in( data_in_TB) , .block_num( block_num_TB) , .byte_offset( byte_offset_TB) , .WE( WE_TB) , .in_tag(in_tag_TB)
            , .in_valid(in_valid_TB) , .CLK(CLK_TB) , .RST(RST_TB) , .data_out(data_out_TB) , .out_tag(out_tag_TB) , .out_valid(out_valid_TB) );
/**********************   clock generation    **********************/
always  #10 CLK_TB = ~ CLK_TB;

/**********************   INTIALIZATION    **********************/
    initial begin 
        CLK_TB = 0 ;
        RST_TB = 1 ;
        #5;
        RST_TB = 0 ;
        #5
        RST_TB = 1 ;
        #5
        data_in_TB = 32'h0000_0000;
        WE_TB = 1'b1;
        block_num_TB = 3'b000;
        byte_offset_TB = 2'b00;
        in_tag_TB = 3'b010;
        in_valid_TB = 1'b1;
        #50;

        data_in_TB = 32'h0000_AAAA;
        WE_TB = 1'b1;
        block_num_TB = 3'b010;
        byte_offset_TB = 2'b11;
        in_tag_TB = 3'b010;
        in_valid_TB = 1'b1;
        #50;

        data_in_TB = 32'hFFFF_0000;
        WE_TB = 1'b1;
        block_num_TB = 3'b100;
        byte_offset_TB = 2'b10;
        in_tag_TB = 3'b110;
        in_valid_TB = 1'b1;
        #50;

        data_in_TB = 32'hAAAA_1598;
        WE_TB = 1'b1;
        block_num_TB = 3'b101;
        byte_offset_TB = 2'b01;
        in_tag_TB = 3'b110;
        in_valid_TB = 1'b1;
        #50;
        data_in_TB = 32'h0000_0000;
        WE_TB = 1'b0;
        block_num_TB = 3'b000;
        byte_offset_TB = 2'b00;
        in_tag_TB = 3'b010;
        in_valid_TB = 1'b1;
        #50;
        data_in_TB = 32'h0000_0000;
        WE_TB = 1'b0;
        block_num_TB = 3'b010;
        byte_offset_TB = 2'b11;
        in_tag_TB = 3'b010;
        in_valid_TB = 1'b1;
        #50;
        data_in_TB = 32'h0000_0000;
        WE_TB = 1'b0;
        block_num_TB = 3'b100;
        byte_offset_TB = 2'b10;
        in_tag_TB = 3'b010;
        in_valid_TB = 1'b1;
        #50;
        data_in_TB = 32'h0000_0000;
        WE_TB = 1'b0;
        block_num_TB = 3'b101;
        byte_offset_TB = 2'b01;
        in_tag_TB = 3'b010;
        in_valid_TB = 1'b1;
        
        end
endmodule
