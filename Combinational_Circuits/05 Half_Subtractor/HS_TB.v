module HS_TB;
	reg a, b;
	wire diff, borrow;
	integer i;

	HS dut(a, b, diff, borrow);
	initial begin
			$display("\tIMPLEMENTATION OF HALF SUBTRACTOR");
			$display("\t---------------------------------");
			$display("\t | a | b | difference | borrow |");
		for(i = 0; i < 4; i = i + 1)begin
			{a , b} = i;
			#5;
			$display("\t| %0b | %0b |      %0b     |    %0b   |", a, b, diff, borrow);
		end
			$display("\t---------------------------------");
	end
endmodule
