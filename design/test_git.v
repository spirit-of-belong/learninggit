module	test_git(
				input								clk,
				input								rst,
				input								data,
				output							data_o
);

reg	d;

always@(posedge clk	or negedge rst)
begin
		if(!rst)
			d<=0;
		else
			d<=~data;
end

assign data_o=d;

endmodule