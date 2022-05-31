module mux_gen_32 (out, s, in1, in2, in3);

output reg [15:0] out;
input [15:0] in1, in2, in3;
input [1:0] s;

always @(*)
begin
	case(s)
	2'b00	: out = in1;
	2'b01	: out = in2;
	2'b10	: out = in3;
	endcase
end

endmodule