module registers (dout1, dout2, dout3, din, address1, address2, address3, wen, clk);

output reg [15:0] dout1, dout2, dout3;
input [15:0] din;
input [3:0] address1, address2, address3;
input wen, clk;
reg [15:0] register [0:15];

 
initial
begin
	//registers are initialized, might be a different approach for this but here we have used it. Assuming that the method for populating register does not matter
	register[4'b0000] <= 16'h0;
	register[4'b0001] <= 16'h09e4;
	register[4'b0010] <= 16'hc61b;
	register[4'b0011] <= 16'hff49;
	register[4'b0100] <= 16'h756e;
	register[4'b0101] <= 16'h0014;
	register[4'b0110] <= 16'h0032;
	register[4'b0111] <= 16'hb7a1;
	register[4'b1000] <= 16'hff49;
	register[4'b1001] <= 16'h5878;
	register[4'b1010] <= 16'h08eb;
	register[4'b1011] <= 16'hca09;
	register[4'b1100] <= 16'ha24b;
	register[4'b1101] <= 16'h8aa9;
	register[4'b1110] <= 16'h2ab2;
	register[4'b1111] <= 16'h7814;
end
 
always @(negedge clk)
begin
	#1 //this delay is introduced such that write can happen before reading the registers and the written value can be shown in the same cycle. practically not required.
	//just for display convenience 
	dout1 = register[address1];
	dout2 = register[address2];
	dout3 = register[address3];
end

always @(negedge clk)
begin
	if(wen)
		register[address3] = din;
end

endmodule