module mux_gen_21 (out, s0, in1, in2);

output reg [15:0] out;
input [15:0] in1, in2;
input s0;

always @(*)
begin
	case(s0)
	1'b0	: out = in1;
	1'b1	: out = in2;
	endcase
end

endmodule