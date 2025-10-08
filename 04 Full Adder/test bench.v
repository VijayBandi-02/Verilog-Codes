// test bench for FullAdder:

`include "FA.v"
module TB;
	reg a, b, c;
	wire sum, carry;
	integer int;

	FA dut(a, b, c, sum, carry);
		initial begin
				$display("-----------------------");
				$display("--Implementation of FA-");
				$display("-----------------------");
				$display("| a b c | sum | carry |");
				$display("-----------------------");
			for(int = 0; int < 8; int = int + 1)begin
				{a, b, c}=int; #100;
				$display("| %0b %0b %0b |  %b  |   %b   |", a, b, c, sum, carry);
			end
			$display("-----------------------");
		end
endmodule
