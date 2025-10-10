// design for Half adder:

module HA(a, b, sum, carry);
	input a,b;

	/*
	//data flow model;
	output sum, carry;
	assign sum = (a ^ b);
	assign carry = (a & b);

	//behavioural model:
	output wire sum, carry;
	always@(*)begin
		sum = (a ^ b);  	
		carry = (a & b);
	end
*/
	//structural model:
	output sum, carry;
	xor g1(sum, a, b);
	and g2(carry, a, b);
endmodule
