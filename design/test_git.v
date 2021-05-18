module	test_git(
				input								clk,
				input								rst,
				input								data,
				output							data_o
);

parameter canshu=8'd10;

reg	d;
reg rst1,rst2;

//˫�����·��ȥ������̬
always@(posedge clk or negedge rst)
begin
	if(!rst)
		begin
			{rst2,rst1}<=2'b11;
		end
		  {rst2,rst1}<={rst1,rst};
end

always@(posedge clk	or negedge rst2)
begin
		if(!rst2)
			d<=0;
		else
			d<=data & canshu[7];
end

assign data_o=(d>>1)^d;

endmodule