module TestBench;

 reg reset;
 reg [3:0]pointIn;
 reg button;

 wire [10:0] pointAll;
 wire [5:0]  point1Test;
 wire [5:0]  point2Test;
 wire [5:0]  point3Test;
 wire [5:0]  point4Test;
 wire [5:0]  point5Test;
 wire [5:0]  point6Test;
 wire [5:0]  point7Test;
 wire [5:0]  point8Test;
 wire [5:0]  point9Test;
 wire [5:0]  point10Test;

Bowling bowling(reset,pointIn,button,pointAll,point1Test,point2Test,point3Test,point4Test,point5Test,point6Test,point7Test,point8Test,point9Test,point10Test);
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