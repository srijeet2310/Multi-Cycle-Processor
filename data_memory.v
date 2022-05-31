module data_memory (dout, din, address, wen, ren, clk);

output reg [15:0] dout;
input [15:0] address, din;
input wen, ren, clk;
reg [7:0] mem [0:64*1024-1];

 
initial
	$readmemh("data_mem.dat", mem);
 
always @(negedge clk)
begin
	if(ren)
		dout <= {mem[address+1],mem[address]};
	else
		dout <= 16'bz;
	if(wen)
	begin
		{mem[address+1], mem[address]} <= din;
		$writememh("data_mem.dat", mem);
	end
end

endmodule