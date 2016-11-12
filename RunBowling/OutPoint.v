module OutPoint(unlock,pointIn,pointOut);
input unlock;
input [0:5] pointIn;

output reg [0:5] pointOut;
always@(*) begin
	if(unlock)
		pointOut <= pointIn;
	else
		pointOut <= 0;

end


endmodule