module MUX2TO1 (IN0 , IN1 , SEL , 
            OUT );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire [31 : 0] IN0;
input wire [31 : 0] IN1;
input wire SEL;

/********************** output declaration **********************/
output wire [31 : 0] OUT;

/********************** internal wires **********************/


/**********************   descriptin   **********************/

assign OUT = (SEL == 1'b0)? IN0 : IN1;



endmodule
