// implementation of 4 Bit Full Adder using 1 Bit Full Adder:

//1 bit full adder:
module FA(a, b, c, sum, carry);
	input a, b, c;
	output  sum, carry;
	
	assign sum = (a ^ b ^ c);
	assign carry = ((a & b) | (b & c) | (c & a));
endmodule

//4 bit full adder using 1 bit full adder:
module four_bit_FA(a, b, cin, sum, cout);
	input [3:0] a;
	input [3:0] b;
	input cin;
	output [3:0] sum;
	output cout;
	wire [2:0] c;  // internal carries

	FA fa0(a[0], b[0], cin, sum[0], c[0]);
	FA fa1(a[1], b[1], c[0], sum[1], c[1]);
	FA fa2(a[2], b[2], c[1], sum[2], c[2]);
	FA fa3(a[3], b[3], c[2], sum[3], cout);
endmodule

// TEST BENCH FOR 4 BIT FULL ADDER:
module four_bit_FA_TB;
	reg [3:0] a;
	reg [3:0] b;
	reg cin;	
	wire [3:0] sum;
	wire cout;
	integer i;

	four_bit_FA dut(a, b, cin, sum, cout);
	
	initial begin
		$display("Time\tA\tB\tCin\t|\tSum\tCout");
        $display("--------------------------------------------------");
	end

	initial begin
		for (cin = 0; cin <= 1; cin = cin + 1) begin
			repeat(20)begin
				{a, b} = $random();
				#5;
				$display("%0t\t%b\t%b\t%b\t|\t%b\t%b", $time, a, b, cin, sum, cout);
			end
		end
	end
	initial #205 $finish;
endmodule
