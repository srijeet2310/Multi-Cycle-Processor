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