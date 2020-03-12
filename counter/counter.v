
`timescale 1ns/100ps
module counter(cnt,clk,data,rst_,load);

output reg[4:0] cnt;
input[4:0]  data;
input       rst_;
input       load;
input       clk;

always @ (posedge clk or negedge rst_)
begin
	if (!rst_)
	begin
		#1.2 cnt <= 0;
	end
	else
	begin
		if(load)
		begin
			cnt <= #3 data;
		end
		else
		begin
			cnt <= #4 cnt + 1;
		end
	end
end

endmodule