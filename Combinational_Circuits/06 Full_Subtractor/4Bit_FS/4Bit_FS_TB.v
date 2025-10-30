module FS_4Bit_TB;
	reg [3:0] x;
	reg [3:0] y;
	reg Bin; 
	wire [3:0] d;
	wire Bout;

	FS_4Bit dut(x, y, Bin, d, Bout);
	initial begin
		$display("\n\tx\ty\tBin\td\tBout");
		for(Bin = 0; Bin < 1; Bin = Bin + 1)begin
			repeat(10)begin
				{x, y} = $random();
				#5;
				$display("\t%b\t%b\t%b\t%b\t%b", x, y, Bin, d, Bout);
			end
		end
	end
	initial #205 $finish;
endmodule
