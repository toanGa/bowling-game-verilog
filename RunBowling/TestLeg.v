module TestLed();
reg [10:0] point;
wire [0:6] hundred7SegCode;
wire [0:6] ten7SegCode;
wire [0:6] current7SegCode;

OutReg7Seg ledTest(point,hundred7SegCode,ten7SegCode,current7SegCode);

initial begin
	#20 point <= 100;$monitor("point: %d",point);
	#10 point <= 123;$monitor("point: %d",point);
	#30 point <= 99;$monitor("point: %d",point);
	#30 point <= 12;$monitor("point: %d",point);
	#30 point <= 100;$monitor("point: %d",point);
	#30 point <= 2;$monitor("point: %d",point);


end


endmodule