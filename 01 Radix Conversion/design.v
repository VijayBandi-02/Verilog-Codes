module radix;
	integer bin_num;	// binary number 
	integer oct_num;	// octal number
	integer	dec_num;	// decimal number
	integer	hex_num;	// hexa decimal number
	
	initial begin
		bin_num = 'b10111011;#1;
		oct_num = 'o6;#1;
		dec_num = 'd23;#1;
		hex_num = 'hABCD;#1;

		$display("Binary number %0b in -> octal : %0o, decimal : %0d, hexa : %0h", bin_num, bin_num, bin_num, bin_num);
		$display("Octal number %0o in -> binary : %0b, decimal : %0d, hexa : %0h", oct_num, oct_num, oct_num, oct_num);
		$display("Decimal number %0d in -> binary : %0b, octal : %0o, hexa : %0h", dec_num, dec_num, dec_num, dec_num);
		$display("Hexa number %0h in -> binary : %0b, octal : %0o, decimal : %0d", hex_num, hex_num, hex_num, hex_num);
	end
endmodule
