module LogicGates(a, b, buffer_out, not_out, and_out, nand_out, or_out, nor_out, xor_out, xnor_out);
	input a, b;
	output buffer_out, not_out, and_out, nand_out, or_out, nor_out, xor_out, xnor_out;

	assign buffer_out = a;
	assign not_out = ~a;
	assign and_out = (a & b);
	assign nand_out = ~(a & b);
	assign or_out = (a | b);
	assign nor_out = ~(a | b);
	assign xor_out = (a ^ b);
	assign xnor_out = ~(a ^ b);
endmodule
