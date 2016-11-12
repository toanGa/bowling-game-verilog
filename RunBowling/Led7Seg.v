module Led7Seg(in,out);
input wire [3:0] in;
output reg [0:6] out;

/* cathod chung
 *
 *****************7'babcdefg*/
parameter LED_0 = 7'b0000001,
		  LED_1 = 7'b1001111,
		  LED_2 = 7'b0010010,
		  LED_3 = 7'b0000110,
		  LED_4 = 7'b1001100,
		  LED_5 = 7'b0100100,
		  LED_6 = 7'b0100000,
		  LED_7 = 7'b0001111,
		  LED_8 = 7'b0000000,
		  LED_9 = 7'b0000100;
always@(*)begin
	if(in == 0)
		out <= LED_0;
	else if(in == 1)
		out <= LED_1;
	else if(in == 2)
		out <= LED_2;
	else if(in == 3)
		out <= LED_3;
	else if(in == 4)
		out <= LED_4;
	else if(in == 5)
		out <= LED_5;
	else if(in == 6)
		out <= LED_6;
	else if(in == 7)
		out <= LED_7;
	else if(in == 8)
		out <= LED_8;
	else if(in == 9)
		out <= LED_9;
	
end

endmodule;