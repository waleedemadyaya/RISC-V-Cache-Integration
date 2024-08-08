module MAIN_DECODER (OP6_0 , Zero , 
            PCSrc , ResultSrc1_0 , MemWrite , MemRead , ALUSrc , ImmSrc1_0 , RegWrite , ALUOP1_0 );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire [6 : 0] OP6_0;
input wire Zero;

/********************** output declaration **********************/
output wire PCSrc;
output reg[1 : 0] ResultSrc1_0;
output reg MemWrite , MemRead;
output reg ALUSrc;
output reg[1 : 0] ImmSrc1_0;
output reg RegWrite;
output reg[1 : 0] ALUOP1_0;

/********************** internal wires **********************/
reg Branch;
reg Jump;

/**********************   descriptin   **********************/

assign PCSrc = Jump | (Branch & Zero) ;

always @ (*)
begin
    case (OP6_0) 

        7'b0000011: //lw
            begin
                RegWrite = 1'b1;
                ImmSrc1_0 = 2'b00;
                ALUSrc = 1'b1;
                MemWrite = 1'b0;
                ResultSrc1_0 = 2'b01;
                Branch = 1'b0;
                ALUOP1_0 = 2'b00;
                Jump = 1'b0;
                MemRead = 1;
            end
        7'b0100011: //sw
            begin
                RegWrite = 1'b0;
                ImmSrc1_0 = 2'b01;
                ALUSrc = 1'b1;
                MemWrite = 1'b1;
                ResultSrc1_0 = 2'b00;
                Branch = 1'b0;
                ALUOP1_0 = 2'b00;
                Jump = 1'b0;
                MemRead = 0;

            end
        7'b0110011: //R-type
            begin
                RegWrite = 1'b1;
                ImmSrc1_0 = 2'b00;
                ALUSrc = 1'b0;
                MemWrite = 1'b0;
                ResultSrc1_0 = 2'b00;
                Branch = 1'b0;
                ALUOP1_0 = 2'b10;
                Jump = 1'b0;
                MemRead = 0;
            end
        7'b1100011:  //beq
            begin
                RegWrite = 1'b0;
                ImmSrc1_0 = 2'b10;
                ALUSrc = 1'b0;
                MemWrite = 1'b0;
                ResultSrc1_0 = 2'b00;
                Branch = 1'b1;
                ALUOP1_0 = 2'b01;
                Jump = 1'b0;
                MemRead = 0;
            end
        7'b0010011:  //I-tupe ALU
            begin
                RegWrite = 1'b1;
                ImmSrc1_0 = 2'b00;
                ALUSrc = 1'b1;
                MemWrite = 1'b0;
                ResultSrc1_0 = 2'b00;
                Branch = 1'b0;
                ALUOP1_0 = 2'b10;
                Jump = 1'b0;
                MemRead = 0;
            end
        7'b1101111:  //jal
            begin
                RegWrite = 1'b1;
                ImmSrc1_0 = 2'b11;
                ALUSrc = 1'b0;
                MemWrite = 1'b0;
                ResultSrc1_0 = 2'b10;
                Branch = 1'b0;
                ALUOP1_0 = 2'b00;
                Jump = 1'b1;
                MemRead = 0;
            end
        default :
            begin
                RegWrite = 1'b0;
                ImmSrc1_0 = 2'b00;
                ALUSrc = 1'b0;
                MemWrite = 1'b0;
                ResultSrc1_0 = 2'b00;
                Branch = 1'b0;
                ALUOP1_0 = 2'b00;
                Jump = 1'b0;
                MemRead = 0;
            end

    endcase
end

endmodule
