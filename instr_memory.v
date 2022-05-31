module instr_memory (dout, address, ren, clk);

output reg [15:0] dout;
input [15:0] address;
input ren, clk;
reg [7:0] mem [0:64*1024-1];

 
initial
	$readmemh("instr_mem.dat", mem);
 
always @(negedge clk)
begin
	if(ren)
		dout <= {mem[address+1],mem[address]};
end

endmodule