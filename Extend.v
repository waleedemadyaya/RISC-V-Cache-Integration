module Extend (ImmSrc1_0 , Instr31_7 , 
            ImmExt );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire [1  : 0] ImmSrc1_0;
input wire [31 : 7] Instr31_7;

/********************** output declaration **********************/
output reg[31 : 0] ImmExt;

/********************** internal wires **********************/


/**********************   descriptin   **********************/

always @ (*)
begin
    case (ImmSrc1_0)
        2'b00   : begin ImmExt = {{20{Instr31_7[31]}} , Instr31_7[31:20]}; end
        2'b01   : begin ImmExt = {{20{Instr31_7[31]}} , Instr31_7[31:25] , Instr31_7[11:7]}; end
        2'b10   : begin ImmExt = {{20{Instr31_7[31]}} , Instr31_7[7] , Instr31_7[30:25] , Instr31_7[11:8] , 1'b0}; end
        2'b11   : begin ImmExt = {{12{Instr31_7[31]}} , Instr31_7[19:12], Instr31_7[20], Instr31_7[30:21], 1'b0}; end
        default : begin ImmExt = 32'h0000_0000; end

    endcase
end

endmodule
