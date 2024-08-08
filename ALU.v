module ALU (SrcA , SrcB , ALUControl2_0 , 
            ALUResult , Zero );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire [31 : 0] SrcA;
input wire [31 : 0] SrcB;
input wire [2 : 0] ALUControl2_0;

/********************** output declaration **********************/
output reg  [31 : 0] ALUResult;
output wire Zero;

/********************** internal wires **********************/


/**********************   descriptin   **********************/


assign Zero = (ALUResult == 1'b0) ? 1'b1 : 1'b0;

always @ (*)
begin
    case (ALUControl2_0)
        3'b000: //add
        begin 
            ALUResult = SrcA + SrcB;
        end
        3'b001:  //subtract
        begin 
            ALUResult = SrcA - SrcB;
        end
        3'b010:  //and
        begin 
            ALUResult = SrcA & SrcB;
        end
        3'b011:  //or 
        begin 
            ALUResult = SrcA | SrcB;
        end
        3'b101:  //slt
        begin 
            if (SrcA < SrcB)
                ALUResult = 32'h0000_0001;
            else
                ALUResult = 32'h0000_0000;
        end
        default
        begin 
            ALUResult = 32'h0000_0000;
        end


    endcase
end

endmodule
