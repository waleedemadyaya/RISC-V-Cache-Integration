module FF (PCNext , RST,CLK,
            PC );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire [31 : 0] PCNext;
input wire          RST , CLK;

/********************** output declaration **********************/
output reg [31 : 0] PC;

/********************** internal wires **********************/


/**********************   descriptin   **********************/

always @ (posedge CLK , negedge RST )
begin
    if (~RST) PC <= 32'h0000_0000;
    else PC <= PCNext;
end

endmodule
