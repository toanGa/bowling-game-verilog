module OutReg7Seg(point,hundred7SegCode,ten7SegCode,current7SegCode);
input wire [10:0] point;
output wire [0:6] hundred7SegCode;
output wire [0:6] ten7SegCode;
output wire [0:6] current7SegCode;

reg [3:0] hundred;
reg [3:0] ten;
reg [3:0] current;


always@(*)begin
	hundred <= point/100;
	ten <= (point%100)/10;
	current <= (point%100)%10;
	//$monitor("%d,%d,%d",hundred,ten,current);
end

//Led7Seg hundred_led(.in(hundred),.out(hundred7SegCode));
Led7Seg hundred_led((hundred),(hundred7SegCode));
Led7Seg ten_led(.in(ten),.out(ten7SegCode));
Led7Seg current_led(.in(current),.out(current7SegCode));
endmodule