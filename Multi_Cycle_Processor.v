//Name1: Srijeet Guha ID:2019A3PS0280P
//Name2: Sayed Owais Ali ID:2018B3A70947P 

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
//****************************************************************************************************************************************************************************************************************************

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

module mux_sp_32 (out, s, in1, in2, in3);

output reg [3:0] out;
input [3:0] in1, in2;
input [1:0] in3;
input [1:0] s;

always @(*)
begin
	case(s)
	2'b00	: out = in1;
	2'b01	: out = in2;
	2'b10	: out = {2'b10,in3};
	endcase
end

endmodule

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

module control_path(PC_write,BPC_write,NBPC_write,Instr_ren,Reg3_select,Reg_wen,ALU_srcA,MemtoReg,Mem_ren,
				    Mem_wen,PC_select,Reg1_select,ALU_srcB,ALU_OP,clk,rst,Opcode);

output reg PC_write,BPC_write,NBPC_write,Instr_ren,Reg3_select,Reg_wen,ALU_srcA,MemtoReg,Mem_ren,Mem_wen, PC_select;
output reg [1:0] Reg1_select;
output reg [2:0] ALU_srcB,ALU_OP; 
input clk, rst;
input [3:0] Opcode;

localparam S0=5'd0,S1=5'd1,S2=5'd2,S3=5'd3,S4=5'd4,S5=5'd5,S6=5'd6,S7=5'd7,S8=5'd8,S9=5'd9,S10=5'd10,S11=5'd11,S12=5'd12,S13=5'd13,S14=5'd14,
		   S15=5'd15,S16=5'd16,S17=5'd17,S18=5'd18,S19=5'd19,S20=5'd20,S21=5'd21,S22=5'd22,S23=5'd23;
		   
reg [4:0] present_state,next_state;

always @(posedge clk)
begin
	if(rst)
		present_state<=S0;
	else
		present_state<=next_state;
end

always @(*)
begin
	case(present_state)
	S0: begin PC_select=1'b0;PC_write=1'b1;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b1;Reg1_select=2'b00;Reg3_select=1'b0;Reg_wen=1'b0;ALU_srcA=1'b0;
			ALU_srcB=3'b001;ALU_OP=3'b000;MemtoReg=1'b0;Mem_ren=1'b0;Mem_wen=1'b0; end
		  
	S1: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b00;Reg3_select=1'b0;Reg_wen=1'b0;
			Mem_ren=1'b0;Mem_wen=1'b0; end
		  
	S2: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b01;Reg3_select=1'b0;Reg_wen=1'b0;
		  Mem_ren=1'b0;Mem_wen=1'b0; end
		  
	S3: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b10;Reg3_select=1'b1;Reg_wen=1'b0;
		  Mem_ren=1'b0;Mem_wen=1'b0; end
		  
	S4: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b00;Reg3_select=1'b0;Reg_wen=1'b0;ALU_srcA=1'b1;
		  ALU_srcB=3'b000;ALU_OP=3'b000;Mem_ren=1'b0;Mem_wen=1'b0; end
		  
	S5: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b01;Reg3_select=1'b0;Reg_wen=1'b0;ALU_srcA=1'b1;
		  ALU_srcB=3'b010;ALU_OP=3'b000;Mem_ren=1'b0;Mem_wen=1'b0; end	

	S6: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b01;Reg3_select=1'b0;Reg_wen=1'b0;ALU_srcA=1'b1;
		  ALU_srcB=3'b011;ALU_OP=3'b000;Mem_ren=1'b0;Mem_wen=1'b0; end		

	S7: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b00;Reg3_select=1'b0;Reg_wen=1'b0;ALU_srcA=1'b1;
		  ALU_srcB=3'b000;ALU_OP=3'b001;Mem_ren=1'b0;Mem_wen=1'b0; end		

	S8: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b01;Reg3_select=1'b0;Reg_wen=1'b0;ALU_srcA=1'b1;
		  ALU_srcB=3'b010;ALU_OP=3'b001;Mem_ren=1'b0;Mem_wen=1'b0; end
		  
	S9: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b01;Reg3_select=1'b0;Reg_wen=1'b0;ALU_srcA=1'b1;
		  ALU_srcB=3'b011;ALU_OP=3'b001;Mem_ren=1'b0;Mem_wen=1'b0; end
		  
	S10: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b01;Reg3_select=1'b0;Reg_wen=1'b0;ALU_srcA=1'b1;
		  ALU_srcB=3'b011;ALU_OP=3'b010;Mem_ren=1'b0;Mem_wen=1'b0; end
		  
	S11: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b00;Reg3_select=1'b0;Reg_wen=1'b0;ALU_srcA=1'b1;
		  ALU_srcB=3'b000;ALU_OP=3'b011;Mem_ren=1'b0;Mem_wen=1'b0; end		

	S12: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b00;Reg3_select=1'b0;Reg_wen=1'b0;ALU_srcA=1'b1;
		  ALU_srcB=3'b000;ALU_OP=3'b100;Mem_ren=1'b0;Mem_wen=1'b0; end	

	S13: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b01;Reg3_select=1'b0;Reg_wen=1'b0;ALU_srcA=1'b1;
		  ALU_srcB=3'b010;ALU_OP=3'b011;Mem_ren=1'b0;Mem_wen=1'b0; end	

	S14: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b01;Reg3_select=1'b0;Reg_wen=1'b0;ALU_srcA=1'b1;
		  ALU_srcB=3'b010;ALU_OP=3'b100;Mem_ren=1'b0;Mem_wen=1'b0; end	

	S15: begin PC_select=1'b1;PC_write=1'b0;BPC_write=1'b1;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b00;Reg3_select=1'b0;Reg_wen=1'b0;ALU_srcA=1'b1;
		  ALU_srcB=3'b000;ALU_OP=3'b001;Mem_ren=1'b0;Mem_wen=1'b0; end	

	S16: begin PC_select=1'b1;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b1;Instr_ren=1'b0;Reg1_select=2'b00;Reg3_select=1'b0;Reg_wen=1'b0;ALU_srcA=1'b1;
		  ALU_srcB=3'b000;ALU_OP=3'b001;Mem_ren=1'b0;Mem_wen=1'b0; end	

	S17: begin PC_select=1'b0;PC_write=1'b1;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b10;Reg3_select=1'b1;Reg_wen=1'b0;ALU_srcA=1'b0;
		  ALU_srcB=3'b101;ALU_OP=3'b000;Mem_ren=1'b0;Mem_wen=1'b0; end		

	S18: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b10;Reg3_select=1'b1;Reg_wen=1'b0;ALU_srcA=1'b1;
		  ALU_srcB=3'b100;ALU_OP=3'b000;Mem_ren=1'b0;Mem_wen=1'b0; end	

	S19: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b10;Reg3_select=1'b1;Reg_wen=1'b0;ALU_srcA=1'b1;
		  ALU_srcB=3'b100;ALU_OP=3'b000;Mem_ren=1'b0;Mem_wen=1'b0; end	

	S20: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg_wen=1'b1;MemtoReg=1'b0;Mem_ren=1'b0;Mem_wen=1'b0; end			  
	
	S21: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b10;Reg3_select=1'b1;Reg_wen=1'b0;ALU_srcA=1'b1;
		  ALU_srcB=3'b100;ALU_OP=3'b000;Mem_ren=1'b1;Mem_wen=1'b0; end	

	S22: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b10;Reg3_select=1'b1;Reg_wen=1'b1;MemtoReg=1'b1;
		  Mem_ren=1'b1;Mem_wen=1'b0; end

	S23: begin PC_select=1'b0;PC_write=1'b0;BPC_write=1'b0;NBPC_write=1'b0;Instr_ren=1'b0;Reg1_select=2'b10;Reg3_select=1'b1;Reg_wen=1'b0;
		  Mem_ren=1'b0;Mem_wen=1'b1; end	
	endcase
end

always @(*)
begin
	case(present_state)
	S0: begin 
		if(Opcode==4'b1000||Opcode==4'b1100||Opcode==4'b1011||Opcode==4'b1111||Opcode==4'b0100||Opcode==4'b0101)
			next_state=S1;
		else if(Opcode==4'b1001||Opcode==4'b1010||Opcode==4'b1101||Opcode==4'b1110||Opcode==4'b0000||Opcode==4'b0111||Opcode==4'b0110)
			next_state=S2;
		else if(Opcode==4'b0001||Opcode==4'b0010||Opcode==4'b0011)
			next_state=S3;
		end
	
	S1: begin
		if(Opcode==4'b1000)
			next_state=S4;
		else if(Opcode==4'b1100)
			next_state=S7;
		else if(Opcode==4'b1011)
			next_state=S11;
		else if(Opcode==4'b1111)
			next_state=S12;
		else if(Opcode==4'b0100)
			next_state=S15;
		else if(Opcode==4'b0101)
			next_state=S16;
	end

	S2: begin
		if(Opcode==4'b1001)
			next_state=S5;
		else if(Opcode==4'b1010)
			next_state=S6;
		else if(Opcode==4'b1101)
			next_state=S8;
		else if(Opcode==4'b1110)
			next_state=S9;
		else if(Opcode==4'b0000)
			next_state=S10;
		else if(Opcode==4'b0111)
			next_state=S13;
		else if(Opcode==4'b0110)
			next_state=S14;
	end
	
	S3: begin
		if(Opcode==4'b0011)
			next_state=S17;
		else if(Opcode==4'b0001)
			next_state=S18;
		else if(Opcode==4'b0010)
			next_state=S19;
	end
		  
	S4:	 next_state=S20;
	S5:	 next_state=S20;
	S6:	 next_state=S20;
	S7:	 next_state=S20;
	S8:	 next_state=S20;
	S9:	 next_state=S20;
	S10: next_state=S20;
	S11: next_state=S20;
	S12: next_state=S20;
	S13: next_state=S20;
	S14: next_state=S20;
	S15: next_state=S0;
	S16: next_state=S0;
	S17: next_state=S0;
	S18: next_state=S21;
	S19: next_state=S23;		  
	S20: next_state=S0;
	S21: next_state=S22;
	S22: next_state=S0;
	S23: next_state=S0;
	endcase
end

endmodule	  