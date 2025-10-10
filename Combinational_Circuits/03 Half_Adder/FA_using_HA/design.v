// design of Half Adder:
module HA(a, b, sum, carry);
	input a,b;
	output sum, carry;
	assign sum = (a ^ b);
	assign carry = (a & b);
endmodule

// design for Full Adder using Half Adder:
module FAusingHA(a, b, c, sum, carry);
	input a, b, c;
	output sum, carry;
	wire w1, w2, w3;
	HA m1(a, b, w1, w2);
	HA m2(w1, c, sum, w3);
	or g1(carry, w2, w3);	
endmodule

//Test bench for Full Adder using Hall Adder:
module TB;
	reg a, b, c;
	wire sum, carry;
	integer int;
	FAusingHA dut(a, b, c, sum, carry);
	initial begin
		$display("-----------------------");
		$display("------FA using HA------");
		$display("-----------------------");
		$display("| a b c | sum | carry |");
		$display("-----------------------");
		for(int = 0; int < 8; int = int + 1)begin
			{a, b, c} = int;
			#10;
			$display("| %0b %0b %0b |  %0b  |   %0b   |", a, b, c, sum, carry);
		end
		$display("-----------------------");
	end
endmodule
