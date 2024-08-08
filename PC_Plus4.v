module PC_Plus4 (PC , stall ,
            PCPlus4 );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire [31 : 0] PC;
input wire stall;

/********************** output declaration **********************/
output wire [31 : 0] PCPlus4;

/********************** internal wires **********************/


/**********************   descriptin   **********************/

assign PCPlus4 = (stall == 1) ? (PC) : (PC + 4);

endmodule
