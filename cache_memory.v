module cache_memory (data_in , block_num , byte_offset , WE , in_tag , in_valid , CLK , RST ,
            data_out , out_tag , out_valid );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire [31 : 0] data_in;
input wire [4 : 0] block_num;
input wire [1 : 0] byte_offset;
input wire in_valid;
input wire [2 : 0] in_tag;
input wire WE , CLK , RST;
/********************** output declaration **********************/
output reg [31 : 0] data_out;
output wire [2 : 0] out_tag;
output wire out_valid;

/********************** internal wires **********************/
reg [131 : 0] DATA [0 : 31];

/**********************   descriptin   **********************/
assign out_tag   = DATA[block_num][130:128];
assign out_valid = DATA[block_num][131];

always @ (*)
begin
    case (byte_offset)
        2'b00 : data_out = DATA[block_num][31 :0 ];
        2'b01 : data_out = DATA[block_num][63 :32];
        2'b10 : data_out = DATA[block_num][95 :64];
        2'b11 : data_out = DATA[block_num][127:96];
    endcase
end

always @ ( posedge CLK , negedge RST )
begin
    if (RST == 0)
        begin
            DATA[0 ][131] <= 0;
            DATA[1 ][131] <= 0;
            DATA[2 ][131] <= 0;
            DATA[3 ][131] <= 0;
            DATA[4 ][131] <= 0;
            DATA[5 ][131] <= 0;
            DATA[6 ][131] <= 0;
            DATA[7 ][131] <= 0;
            DATA[8 ][131] <= 0;
            DATA[9 ][131] <= 0;
            DATA[10][131] <= 0;
            DATA[11][131] <= 0;
            DATA[12][131] <= 0;
            DATA[13][131] <= 0;
            DATA[14][131] <= 0;
            DATA[15][131] <= 0;
            DATA[16][131] <= 0;
            DATA[17][131] <= 0;
            DATA[18][131] <= 0;
            DATA[19][131] <= 0;
            DATA[20][131] <= 0;
            DATA[21][131] <= 0;
            DATA[22][131] <= 0;
            DATA[23][131] <= 0;
            DATA[24][131] <= 0;
            DATA[25][131] <= 0;
            DATA[26][131] <= 0;
            DATA[27][131] <= 0;
            DATA[28][131] <= 0;
            DATA[29][131] <= 0;
            DATA[30][131] <= 0;
            DATA[31][131] <= 0;
        end
    else
        begin
            if (WE == 1)
            begin
                DATA[block_num][131] <= in_valid;
                DATA[block_num][130:128] <= in_tag;
                //DATA[block_num][131] <= 1'b1;
                case (byte_offset)
                    2'b00 : DATA[block_num][31 :0 ] <= data_in;
                    2'b01 : DATA[block_num][63 :32] <= data_in;
                    2'b10 : DATA[block_num][95 :64] <= data_in;
                    2'b11 : DATA[block_num][127:96] <= data_in;
                endcase                
            end
        end
end

endmodule
