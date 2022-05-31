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