module mux_sp_53 (out, s, in0, in2, in3, in4, in5);

output reg [15:0] out;
input [15:0] in0;
input [7:0] in2, in3, in4;
input [11:0] in5;
input [2:0] s;

always @(*)
begin
	case(s)
	3'b000	: out = in0;
	3'b001 	: out = 16'h0002;
	3'b010	: out = {{8{in2[7]}},in2};
	3'b011	: out = {8'b0,in3};
	3'b100	: out = {{7{in4[7]}},in4,1'b0};
	3'b101	: out = {{4{in5[11]}},in5};
	endcase
end

endmodule