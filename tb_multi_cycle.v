module tb_multi_cycle;

wire [15:0] out_PC, out_reg1, out_reg2, out_reg3, out_ALU, out_instruction, out_memory;
wire [18:0] out_control;
reg clk, reset, PC_reset;

custom_MuP first_insta (.out_control(out_control),.out_PC(out_PC), .out_reg1(out_reg1), .out_reg2(out_reg2), .out_reg3(out_reg3), .out_ALU(out_ALU), .out_instruction(out_instruction), .out_memory(out_memory), .reset(reset), .clk(clk), .PC_reset(PC_reset));

initial
begin
	clk = 1'b0;
	forever #5 clk = ~clk;
end

initial
begin
	PC_reset = 1'b1;
	#2 PC_reset = 1'b0;
end

initial
begin
	reset = 1'b1;
	#6 reset = 1'b0;
end

initial
begin
	//1
	$display("Addition: register addressing: RD = RS1 + RS2");
	#14 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %hcontrol = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %hcontrol = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//2
	$display("Addition: immediate addressing: RD = RD + Sign-Extended-Immediate Data");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %hcontrol = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//3
	$display("Addition: immediate addressing: RD = RD + Immediate Data");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//4
	$display("Subtraction: register addressing: RD = RS1 - RS2");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//5
	$display("Subtraction: immediate addressing:RD = RD - Sign-Extended-Immediate Data");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//6
	$display("Subtraction: immediate addressing: RD = RD - Immediate Data");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//7
	$display("Shift: Left Logical: RD = shift logical left");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//8
	$display("Shift: Right Logical:RD = shift logical right");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//9
	$display("Shift: Right Arithmetic: RD = shift right");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//10
	$display("Jump: Jump to PC + sign extended immediate data");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	PC = %h reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_PC, out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	//11
	$display("Store");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//12
	$display("Load");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	#10 $display("WB:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//13
	$display("Branch Equal: branch to the address in register RT when RA and RB are equal");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	PC = %h reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_PC, out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	//14
	$display("Branch not Equal: branch to the address in register RT when RA and RB are unequal");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	PC = %h reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_PC, out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	//15
	$display("NAND: register addressing: RD = RS1 nand RS2");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//16
	$display("OR: register addressing: RD = RS1 or RS2");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//17
	$display("NAND: immediate addressing: RD = RD nand (sign extended immediate data)");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//18
	$display("OR: immediate addressing: RD = RD or (sign extended immediate data)");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//19
	$display("Addition: register addressing: RD = RS1 + RS2");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %hcontrol = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %hcontrol = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//20
	$display("Addition: immediate addressing: RD = RD + Sign-Extended-Immediate Data");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %hcontrol = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//21
	$display("Addition: immediate addressing: RD = RD + Immediate Data");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//22
	$display("Subtraction: register addressing: RD = RS1 - RS2");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//23
	$display("Subtraction: immediate addressing:RD = RD - Sign-Extended-Immediate Data");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//24
	$display("Subtraction: immediate addressing: RD = RD - Immediate Data");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//25
	$display("Shift: Left Logical: RD = shift logical left");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//26
	$display("Shift: Right Logical:RD = shift logical right");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//27
	$display("Shift: Right Arithmetic: RD = shift right");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//28
	$display("Jump: Jump to PC + sign extended immediate data");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	PC = %h reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_PC, out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	//29
	$display("Store");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//30
	$display("Load");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	#10 $display("WB:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//31
	$display("Branch not Equal: branch to the address in register RT when RA and RB are unequal");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	PC = %h reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_PC, out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	//32
	$display("Branch Equal: branch to the address in register RT when RA and RB are equal");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	PC = %h reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_PC, out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	//33
	$display("NAND: register addressing: RD = RS1 nand RS2");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//34
	$display("OR: register addressing: RD = RS1 or RS2");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//35
	$display("NAND: immediate addressing: RD = RD nand (sign extended immediate data)");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//36
	$display("OR: immediate addressing: RD = RD or (sign extended immediate data)");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//37
	$display("Addition: register addressing: RD = RS1 + RS2");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %hcontrol = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %hcontrol = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//38
	$display("Subtraction: register addressing: RD = RS1 - RS2");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %hcontrol = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %hcontrol = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//39
	$display("Shift: Right Arithmetic: RD = shift right");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction,out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	//40
	$display("Load");
	#10 $display("IF: 	PC = %h ALU = %h instr = %h control = %b",out_PC,out_ALU, out_instruction, out_control);
	#10 $display("ID: 	reg1 = %h reg2 = %h reg3 = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3, out_instruction,out_control);
	#10 $display("EX:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction,out_control);
	#10 $display("MEMR:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	#10 $display("WB:	reg1 = %h reg2 = %h reg3 = %h ALU = %h instr = %h mem = %h control = %b",out_reg1, out_reg2, out_reg3,out_ALU, out_instruction, out_memory,out_control);
	#1 $finish;
end

endmodule

//********************************************************************************************************************************************************************
module custom_MuP (out_control, out_PC, out_reg1, out_reg2, out_reg3, out_ALU, out_instruction, out_memory, reset,clk, PC_reset);

output [15:0] out_PC, out_reg1, out_reg2, out_reg3, out_ALU, out_instruction, out_memory; 
output [18:0] out_control;
input clk, reset, PC_reset;
wire [15:0] instruction, PC_out, reg_in, reg1, reg2, reg3, ALUA, ALUB, ALU_out, mem_data, PC_in, PC_incr;
wire [3:0] reg1_address, reg3_address;
wire PC_write, BPC_write, NBPC_write, Instr_ren, Reg3_select, Reg_wen, ALU_srcA, MemtoReg, Mem_ren, Mem_wen, zero, PC_select;
wire [1:0]  Reg1_select;
wire [2:0] ALU_srcB, ALU_OP;

instr_memory  	module1  (instruction, PC_out, Instr_ren, clk);
mux_sp_32 		module2  (reg1_address, Reg1_select, instruction[7:4], instruction[11:8], instruction[9:8]);
mux_sp_21 		module3  (reg3_address, Reg3_select, instruction[11:8], instruction[11:10]);
registers 		module4  (reg1, reg2, reg3, reg_in, reg1_address, instruction[3:0], reg3_address, Reg_wen, clk);
mux_gen_21 		module5  (ALUA, ALU_srcA, PC_out, reg1);
mux_sp_53 		module6  (ALUB, ALU_srcB, reg2, instruction[7:0], instruction[7:0], instruction[7:0], instruction[11:0]);
ALU 			module7  (ALU_out, zero, ALUA, ALUB, ALU_OP);
data_memory 	module8  (mem_data, reg3, ALU_out, Mem_wen, Mem_ren, clk);
mux_gen_21 		module9  (reg_in, MemtoReg, ALU_out, mem_data);
mux_gen_21 		module10 (PC_in, PC_select, ALU_out, reg3);
PC 				module11 (PC_out, PC_in, PC_write, BPC_write, NBPC_write, zero, clk, PC_reset);
//PC_adder 		module12 (PC_incr, PC_out, clk, PC_write);
control_path 	module13 (PC_write, BPC_write, NBPC_write, Instr_ren, Reg3_select, Reg_wen, ALU_srcA, MemtoReg, Mem_ren, Mem_wen, PC_select, Reg1_select, ALU_srcB, ALU_OP, clk, reset, instruction[15:12]);
assign out_PC = PC_out;
assign out_reg1 = reg1;
assign out_reg2 = reg2;
assign out_reg3 = reg3;
assign out_ALU = ALU_out;
assign out_instruction = instruction;
assign out_memory = mem_data;
assign out_control = {PC_write, BPC_write, NBPC_write, Instr_ren, Reg3_select, Reg_wen, ALU_srcA, MemtoReg, Mem_ren, Mem_wen, PC_select, Reg1_select, ALU_srcB, ALU_OP};
					
endmodule