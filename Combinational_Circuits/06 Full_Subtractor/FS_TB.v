module FS_TB;
	reg a, b, c;
	wire diff, borrow;
	integer i;

	FS dut(a, b, c, diff, borrow);
	initial begin
		$display("\n-----------------------------");
		$display("| a | b | c | diff | borrow |");
		$display("-----------------------------");
		
		for(i = 0; i < 8; i = i + 1)begin
			{a, b, c} = i;
			#5;
			$display("| %0b | %0b | %0b |   %0b  |    %0b   |", a, b, c, diff, borrow);
		end
		$display("-----------------------------");
	end

endmodule
