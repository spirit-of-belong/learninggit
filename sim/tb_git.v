`timescale 1ns/1ps
module	tb_git;

reg clk,rst,data;
wire	data_o;

initial	begin
	clk=0;
	rst=0;
	data=0;
	#100
	rst=1;
	#100
	data=1;
end


test_git	u1(
				.clk			(clk),
				.rst			(rst),
				.data			(data),
				.data_o   (data_o)
);

always	#10 clk=~clk;

endmodule