module memory_system (
    input wire [4:0] address,
    input wire read_en,
    inout wire [127:0] data
);

reg [127:0] memory [31:0];

assign data = read_en ? memory[address] : 32'hzzzz_zzzz;

always @ (read_en , data , address) begin
    if (~read_en) begin
        memory[address] <= data;
    end
end

endmodule
