module mux_sp_21 (out, s0, in1, in2);

output reg [3:0] out;
input [3:0] in1;
input [1:0] in2;
input s0;

always @(*)
begin
	case(s0)
	1'b0	: out = in1;
	1'b1	: out = {2'b11,in2};
	endcase
end

endmodule