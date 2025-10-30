// implementation of 4 bit Full_Subtractor using 1 bit Full_Subtractors:

`include "FS.v" // Full_Subtractor's file_name
module FS_4Bit(
	input [3:0] x,
	input [3:0] y,
	input Bin, 
	output [3:0] d,
	output Bout,
	wire [2:0] b
	);

	FS fs0(x[0], y[0], Bin,  d[0], b[0]);
	FS fs1(x[1], y[1], b[0], d[0], b[1]);
	FS fs2(x[2], y[2], b[1], d[0], b[2]);
	FS fs3(x[3], y[3], b[2], d[0], Bout);
endmodule
