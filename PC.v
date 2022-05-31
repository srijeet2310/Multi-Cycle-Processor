module PC (PC_out, address, PC_write, BPC_write, NBPC_write, zero, clk, reset);

output reg [15:0] PC_out;
input [15:0] address;
input PC_write, BPC_write, zero, NBPC_write, clk, reset; 
wire write;

assign write = PC_write | (BPC_write & zero) | (NBPC_write & ~zero);

always @(negedge clk or reset)
begin
	if(reset)
		PC_out <= 16'h0000; 
	if(write)
		PC_out <= address; 
end

endmodule