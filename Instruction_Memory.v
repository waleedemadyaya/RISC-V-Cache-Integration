module Instruction_DATAory (A , 
            RD );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire [31 : 0] A;

/********************** output declaration **********************/
output wire [31 : 0] RD;

/********************** DATAory Declaration **********************/
reg [31:0] DATA [0:255]; 

/**********************   descriptin   **********************/
assign RD = DATA[A[9:2]];

initial 
begin
    DATA[0]  = 32'h00a0_0093;  // addi x1, x0, 10 00000000101000000000000010010011
    DATA[1]  = 32'h0140_0113;  // addi x2, x0, 20
    DATA[2]  = 32'h0280_0193;  // addi x3, x0, 40
    DATA[3]  = 32'h0500_0213;  // addi x4, x0, 80
    DATA[4]  = 32'h0a00_0293;  // addi x5, x0, 160
    DATA[5]  = 32'b00000000000100000010000000100011;  // sw x1, 0(x0)
    DATA[6]  = 32'b00000000001000000010001000100011;  // sw x2, 4(x0)
    DATA[7]  = 32'b00000000001100000010010000100011;  // sw x3, 8(x0)
    DATA[8]  = 32'b00000000010000000010011000100011;  // sw x4, 12(x0)
    DATA[9]  = 32'b00000000010100000010011000100011;  // sw x5, 12(x0)
    DATA[10] = 32'b00000000000000000010010100000011;  // lw x10, 0(x0)
    DATA[11] = 32'b00000000010000000010010110000011;  // lw x11, 4(x0)
    DATA[12] = 32'b00000000100000000010011000000011;  // lw x12, 8(x0)
    DATA[13] = 32'b00000000110000000010011010000011;  // lw x13, 12(x0)
    DATA[14] = 32'b00000000010000000010011000100011;  // sw x4, 12(x0)

    
    

    
end

endmodule
