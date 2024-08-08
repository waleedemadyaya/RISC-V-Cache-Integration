module PC_Taget (PC , ImmExt , 
            PCTarget );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire [31 : 0] PC;
input wire [31 : 0] ImmExt;

/********************** output declaration **********************/
output wire [31 : 0] PCTarget;

/********************** internal wires **********************/


/**********************   descriptin   **********************/

assign PCTarget = PC + ImmExt;

endmodule
