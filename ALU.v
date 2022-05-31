module ALU (ALU_out, zero, in1, in2, ALU_OP);

output reg [15:0] ALU_out;
output reg zero;
input [15:0] in1, in2;
input [2:0]ALU_OP;
reg [3:0] shift_number, shift_OP;

always @(in1 or in2 or ALU_OP)
begin
	shift_number = in2[7:4];
	shift_OP = in2[3:0];
	case(ALU_OP)
	3'b000	: ALU_out = in1 + in2;
	3'b001	: ALU_out = in1 - in2;
	3'b010	: 	begin
					ALU_out = in1;
					case(shift_OP)
					4'b0001	: begin repeat(shift_number) ALU_out = ALU_out <<1; end
					4'b0010	: begin repeat(shift_number) ALU_out = ALU_out >>1; end
					4'b0011	: begin repeat(shift_number) ALU_out = {ALU_out[15],ALU_out[15:1]}; end
					endcase
				end
	3'b011	: ALU_out = ~(in1 & in2);
	3'b100	: ALU_out = in1 | in2;
	default	: ALU_out = 16'bz;
	endcase
	if(in1 == in2)
		zero = 1'b1;
	else
		zero = 1'b0;
end

endmodule