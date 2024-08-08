module ALU_DECODER (ALUOP1_0 , OP_5 , funct3_2_0 , funct7_5 , 
            ALUControl2_0 );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire [1 : 0] ALUOP1_0;
input wire OP_5;
input wire [2 : 0] funct3_2_0;
input wire funct7_5;

/********************** output declaration **********************/
output reg [2 : 0] ALUControl2_0;

/********************** internal wires **********************/
wire [1:0] OP_5__funct7_5 = {OP_5,funct7_5};

/**********************   descriptin   **********************/
always @(*)
begin
    case (ALUOP1_0)
        2'b00 :
            begin
                ALUControl2_0 = 3'b000;
            end 
        2'b01 :
            begin
                ALUControl2_0 = 3'b001;
            end 
        2'b10 :
            begin
                case (funct3_2_0)
                    3'b000:
                        begin
                            case (OP_5__funct7_5)
                                2'b00:
                                    begin
                                        ALUControl2_0 = 3'b000;
                                    end
                                2'b01:
                                    begin
                                        ALUControl2_0 = 3'b000;
                                    end
                                2'b10:
                                    begin
                                        ALUControl2_0 = 3'b000;
                                    end
                                2'b11:
                                    begin
                                        ALUControl2_0 = 3'b001;
                                    end
                            endcase
                        end
                    3'b010:
                        begin
                            ALUControl2_0 = 3'b101;
                        end
                    3'b110:
                        begin
                            ALUControl2_0 = 3'b011;
                        end
                    3'b111:
                        begin
                            ALUControl2_0 = 3'b010;
                        end
                    default:
                        begin
                            ALUControl2_0 = 3'bzzz;
                        end
                endcase

            end 
        default :
            begin 
                 ALUControl2_0 = 3'bzzz;
            end
    endcase
end




endmodule
