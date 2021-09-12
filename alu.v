module alu(data_operandA, data_operandB, ctrl_ALUopcode, ctrl_shiftamt, data_result, isNotEqual, isLessThan, overflow);

	input [31:0] data_operandA, data_operandB;
	input [4:0] ctrl_ALUopcode, ctrl_shiftamt;

	output [31:0] data_result;
	output isNotEqual, isLessThan, overflow;
   
	// YOUR CODE HERE //
	wire [31:0] notB;
	wire [31:0] finalB;
	wire cin;
	generate
		for (i = 0; i< 32; i = i + 1) begin
			not not_gate(notB[i], data_operandB[i]);
		end
	endgenerate
	assign finalB = ctrl_ALUopcode[0] == 0 ? B : notB;
	assign cin = ctrl_ALUopcode[0] == 0 ? 0 : 1;
	Adder adder(data_result, overflow, data_operandA, finalB, cin);


endmodule
