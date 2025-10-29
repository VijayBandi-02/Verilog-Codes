// implementation of Half_Subtractor:

module HS(a, b, diff, borrow);
	input a, b;

	// data flow:
	//initial $display("\n\t\tDATA FLOW MODEL:");
	//output diff, borrow;
	//assign diff = (a ^ b);
	//assign borrow = (~a & b);

	//behavioural:
	initial $display("\n\t\tBEHAVIOURAL MODEL:");
	output reg diff, borrow;
	always@(*)begin
		diff = (a ^ b);
		borrow = (~a & b);
	end


	//structural:
	//initial $display("\n\t\tSTRUCTURAL MODEL:");
	//output diff, borrow;
	//wire n1;
	//xor g1(diff, a, b);
	//not g2(n1, a);
	//and g3(borrow, b, n1);

endmodule
