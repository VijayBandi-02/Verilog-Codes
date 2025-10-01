`include "LogicGates.v"
module tb;
	reg a, b;
	wire buffer_out, not_a, and_out, nand_out, or_out, nor_out, xor_out, xnor_out;
	integer int;
	
	LogicGates dut (
        .a(a),
        .b(b),
		.buffer_out(buffer_out),
        .not_out(not_a),
        .and_out(and_out),
        .nand_out(nand_out),
		.or_out(or_out),
        .nor_out(nor_out),
        .xor_out(xor_out),
        .xnor_out(xnor_out)
	);

	initial begin
		$display("-----------------------------------------------------------");
		$display("----------Implementation of 2 input Logic Gates------------");
		$display("-----------------------------------------------------------");
		$display("|   A   |   B   |Buffer|NOT|AND|NAND| OR |NOR|XOR|XNOR|");
		$display("-----------------------------------------------------------");
		a = 0; b = 0; #10;
		$display("| A = %0b | B = %0b |   %0b  | %0b | %0b |  %0b | %0b | %0b | %0b |  %0b |", a, b, buffer_out, not_a, and_out, nand_out, or_out, nor_out, xor_out, xnor_out);
		a = 0; b = 1; #10; 
		$display("| A = %0b | B = %0b |   %0b  | %0b | %0b |  %0b | %0b | %0b | %0b |  %0b |", a, b, buffer_out, not_a, and_out, nand_out, or_out, nor_out, xor_out, xnor_out);
		a = 1; b = 0; #10;
		$display("| A = %0b | B = %0b |   %0b  | %0b | %0b |  %0b | %0b | %0b | %0b |  %0b |", a, b, buffer_out, not_a, and_out, nand_out, or_out, nor_out, xor_out, xnor_out);
		a = 1; b = 1; #10;
		$display("| A = %0b | B = %0b |   %0b  | %0b | %0b |  %0b | %0b | %0b | %0b |  %0b |", a, b, buffer_out, not_a, and_out, nand_out, or_out, nor_out, xor_out, xnor_out);
	end
endmodule
