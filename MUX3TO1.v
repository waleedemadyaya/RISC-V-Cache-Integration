module MUX3TO1 (IN0 , IN1 , IN3 , SEl ,
            OUT );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire [31 : 0] IN0;
input wire [31 : 0] IN1;
input wire [31 : 0] IN3;
input wire [1 : 0] SEl;

/********************** output declaration **********************/
output reg [31 : 0] OUT;

/********************** internal wires **********************/


/**********************   descriptin   **********************/

always @ (*)
begin
    case (SEl)
        2'b00  : OUT = IN0;
        2'b01  : OUT = IN1;
        2'b10  : OUT = IN3;
        2'b11  : OUT = 32'h 0000_0000;
        default: OUT = 32'h 0000_0000;
    endcase 

end

endmodule
