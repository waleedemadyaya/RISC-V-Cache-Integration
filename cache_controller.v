module cache_controller (/*data_in ,*/ Adr , tag_in , valid_in , read , write , CLK , RST ,
                         WE_cache , WE_mem ,  stall , hit1_miss0 , tag , Add_offset , mem_Adr , block_num , valid_out);

/********************** parameters **********************/
localparam idel_state = 2'b00 ;
localparam read_state = 2'b01 ;
localparam write_state = 2'b11 ;

/********************** input declaration **********************/
//input wire [32 : 0] data_in ;
input wire [9 : 0] Adr ;
input wire [2 : 0] tag_in ;
input wire valid_in , CLK , RST , read , write ;

/********************** output declaration **********************/
output reg stall ;
output wire hit1_miss0 ;
output reg WE_cache , WE_mem , valid_out ;
output wire [2 : 0] tag ;
output reg [1 : 0] Add_offset ;
output reg [9 : 0] mem_Adr ;
output wire [4 : 0] block_num ;

/********************** internal wires **********************/
reg [1:0] curr_state , next_state , offset ;
reg [2:0] counter ;

/**********************   descriptin   **********************/

assign hit1_miss0 = ( (tag_in == Adr[9 : 7]) && valid_in )? 1'b1 : 1'b0 ;
assign block_num = Adr[6 : 2];
assign tag = Adr[9 : 7] ;

always @ (negedge stall) valid_out = 0;

always @ (negedge CLK)
begin
    case (next_state)
        idel_state:
        begin
            mem_Adr <= 0;
            stall <= 0;
            counter <= 0;
            WE_cache <= 1'b0 ;
            WE_mem   <= 1'b0 ;
            offset <= 2'b00 ;
            Add_offset <= Adr[1:0] ;
            valid_out <= valid_in;
        end

        read_state:
        begin
            if (hit1_miss0 == 1'b0)
            begin
                mem_Adr <= {Adr[9:2], offset} ;
                Add_offset <= offset ;
                stall <= 1 ;
                counter <= counter + 1'b1 ;
                offset <= offset + 1'b1 ;
                WE_cache <= 1'b1 ;
                WE_mem <= 1'b0 ;
                valid_out <= 1'b0 ;
                if (counter == 3) begin valid_out <= 1; end
                if (counter == 0) begin valid_out <= 0; end
                if (counter == 4) begin stall <= 1'b0 ; counter <= 0 ; offset <= 0 ; valid_out <= 0; Add_offset <= Adr[1:0] ; end
                
            end
            else
            begin
                mem_Adr <= 0;
                Add_offset <= Adr[1 : 0] ;
                stall <= 0;
                counter <= 0;
                offset <= 0;
                WE_cache <= 1'b0 ;
                WE_mem <= 1'b0 ;
                valid_out <= valid_in;
            end
        end

        write_state:begin
            if (hit1_miss0 == 1'b1)
            begin
                stall <= 1'b1 ;
                WE_cache <= 1'b1 ;
                WE_mem   <= 1'b1 ;
                counter <= counter + 1 ;
                mem_Adr <= Adr;
                Add_offset <= Adr[1 : 0] ;
                offset <= 0;
                valid_out <= valid_in;
                if (counter == 4)   begin stall <= 1'b0 ; counter <= 0 ;end
            end
            else 
            begin
                stall <= 1'b1 ;
                WE_cache <= 1'b0 ;
                if (counter == 1'b1) WE_mem <= 1'b1 ;
                else  WE_mem <= 1'b0 ;              
                counter <= counter + 1 ;
                Add_offset <= Adr[1 : 0] ;
                mem_Adr <= Adr ;
                offset <= 0;
                valid_out <= valid_in;
                if (counter == 4)  begin stall <= 1'b0 ; counter<= 0 ;end
            end
        end
    endcase
end

/***************************************************************/
always @ (negedge CLK ,negedge RST)
begin
    if (RST == 0)
        begin
            curr_state <= idel_state;
            counter <= 2'b00;
            offset <= 2'b00 ;
        end
    else 
        begin
            curr_state <= next_state;

        end

end
/***************************************************************/


always @ ( * )
begin
    case (curr_state)
        idel_state  :begin
            if (read == 1'b1)       next_state = read_state;
            else if (write == 1'b1) next_state = write_state;
            else                    next_state = idel_state;
        end
        write_state :begin
            if (write == 1'b0 && read == 1'b0)   next_state = idel_state;
            else if (write == 1'b0 && read == 1'b1) next_state = read_state;
            else                 next_state = write_state ;
        end
        read_state  :begin
            if (write == 1'b0 && read == 1'b0)   next_state = idel_state;
            else if (write == 1'b1 && read == 1'b0) next_state = write_state;
            else                next_state = read_state ;
        end
        default:begin
            next_state = idel_state;
        end
    endcase

end

endmodule
