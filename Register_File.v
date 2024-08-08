module Register_File (A1 , A2 , A3 , WD , WE , CLK , RST,
            RD1 , RD2 );

/********************** parameters **********************/

/********************** input declaration **********************/
input wire [4 : 0] A1;
input wire [4 : 0] A2;
input wire [4 : 0] A3;
input wire [31 : 0] WD;
input wire WE;
input wire CLK , RST;

/********************** output declaration **********************/
output wire [31 : 0] RD1;
output wire [31 : 0] RD2;

/********************** Memory Elements **********************/
reg [31:0] DATA [31:0];

/**********************   descriptin   **********************/

assign RD1 = DATA[A1];
assign RD2 = DATA[A2];

always @ (posedge CLK , negedge RST)
begin
    if (~RST)
        begin 
            DATA[0] <= 32'h0000_0000;
            DATA[1] <= 32'h0000_0000;
            DATA[2] <= 32'h0000_0000;
            DATA[3] <= 32'h0000_0000;
            DATA[4] <= 32'h0000_0000;
            DATA[5] <= 32'h0000_0000;
            DATA[6] <= 32'h0000_0000;
            DATA[7] <= 32'h0000_0000;
            DATA[8] <= 32'h0000_0000;
            DATA[9] <= 32'h0000_0000;
            DATA[10] <= 32'h0000_0000;
            DATA[11] <= 32'h0000_0000;
            DATA[12] <= 32'h0000_0000;
            DATA[13] <= 32'h0000_0000;
            DATA[14] <= 32'h0000_0000;
            DATA[15] <= 32'h0000_0000;
            DATA[16] <= 32'h0000_0000;
            DATA[17] <= 32'h0000_0000;
            DATA[18] <= 32'h0000_0000;
            DATA[19] <= 32'h0000_0000;
            DATA[20] <= 32'h0000_0000;
            DATA[21] <= 32'h0000_0000;
            DATA[22] <= 32'h0000_0000;
            DATA[23] <= 32'h0000_0000;
            DATA[24] <= 32'h0000_0000;
            DATA[25] <= 32'h0000_0000;
            DATA[26] <= 32'h0000_0000;
            DATA[27] <= 32'h0000_0000;
            DATA[28] <= 32'h0000_0000;
            DATA[29] <= 32'h0000_0000;
            DATA[30] <= 32'h0000_0000;
            DATA[31] <= 32'h0000_0000;
         end 
    else if ( WE == 1'b1 && A3 != 32'h0000_0000 ) 
        begin DATA[A3] <= WD; end
    else            
        begin DATA[0] <= 32'h0000_0000; end
end 

endmodule
