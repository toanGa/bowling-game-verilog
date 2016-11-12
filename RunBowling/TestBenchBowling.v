module TestBench;

 reg reset;
 reg [0:3]pointIn;
 reg button;

wire [10:0] pointAll;
wire [0:6] hundred7SegCode;
wire [0:6] ten7SegCode;
wire [0:6] current7SegCode;

Bowling bowling(reset,pointIn,button,pointAll,hundred7SegCode,ten7SegCode,current7SegCode);
initial begin
	reset <= 0; pointIn <= 3;
	#10 reset <= 1;
	#10 reset <= 0 ;
	
	#20 pointIn <= 10;
	#50 button <= 1;
	#30 button <= 0;
	
	#20 pointIn <= 7;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 3;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 3;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 4;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 3;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 5;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 2;
	#30 button <= 1;
	#20 button <= 0;
	/////////////////////////////////////
	#10 reset <= 1;
	#10 reset <= 0 ;
	
	#20 pointIn <= 3;
	#50 button <= 1;
	#30 button <= 0;
	
	#20 pointIn <= 7;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 2;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 3;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 4;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 3;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 5;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 2;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 1;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 3;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 2;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 1;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 7;
	#30 button <= 1;
	#20 button <= 0;
	
	/////////////////////////////////////
	#10 reset <= 1;
	#10 reset <= 0 ;
	
	#20 pointIn <= 3;
	#50 button <= 1;
	#30 button <= 0;
	
	#20 pointIn <= 5;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 2;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 3;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 4;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 3;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 5;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 2;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 1;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 3;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 2;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 1;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 7;
	#30 button <= 1;
	#20 button <= 0;
	
	
	
	#20 pointIn <= 1;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 3;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 5;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 2;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 3;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 3;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 5;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 2;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 3;
	#30 button <= 1;
	#20 button <= 0;
	
	#20 pointIn <= 3;
	#30 button <= 1;
	#20 button <= 0;
	
	


end

endmodule