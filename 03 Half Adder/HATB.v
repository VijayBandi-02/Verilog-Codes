// test bench for Half Adder:

`include "HA.v"
module tb;
	reg a, b;
	wire sum, carry;
	HA dut(a, b, sum, carry);
	initial begin
		a = 0; b = 0; #10;
		$display("| a = %0b | b = %0b | sum = %0b | carry = %0b |",a, b, sum, carry);
		a = 0; b = 1; #10;
		$display("| a = %0b | b = %0b | sum = %0b | carry = %0b |",a, b, sum, carry);
		a = 1; b = 0; #10;
		$display("| a = %0b | b = %0b | sum = %0b | carry = %0b |",a, b, sum, carry);
		a = 1; b = 1; #10;
		$display("| a = %0b | b = %0b | sum = %0b | carry = %0b |",a, b, sum, carry);
	end
endmodule
