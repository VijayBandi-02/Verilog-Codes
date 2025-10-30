// implementation of Full_Subtractor:

module FS(a, b, c, diff, borrow);
    input a, b, c;

	//data flow:
	//output diff, borrow;
  //assign diff = a ^ b ^ c;
  //assign borrow = (~a & b) | (~a & c) | (b & c);

	//behavioural:
	//output reg diff, borrow;
	//always@(*)begin
	//	diff = (a ^ b ^ c);
	//	borrow = ((~a & b) | (b & c) | (~a & c));
	//end

	//structural:
	output diff, borrow;
	wire w1, w2, w3, w4;
	xor g1(diff, a, b, c);
	not g2(w1, a);
	and  g3(w2, w1, b);
	and  g4(w3, b, c);
	and  g5(w4, c, w1);
	or g6(borrow, w2, w3, w4);

endmodule
