module Data_Memory (A , WD , WE , CLK ,
                    RD );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire [9 : 0] A;
input wire [31 : 0] WD;
input wire WE , CLK;

/********************** output declaration **********************/
output wire[31 : 0] RD;

/********************** Internal Wires **********************/

/********************** MEMORY SIMULATION **********************/
reg [31:0] DATA [1023:0];


/**********************   descriptin   **********************/
assign RD = DATA[A];

always @ (posedge CLK )
begin
    if (WE == 1'b1) begin DATA[A] = WD; end
    else            begin                  end
end

endmodule
