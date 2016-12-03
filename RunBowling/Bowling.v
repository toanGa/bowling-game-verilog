/*
 * Bowling game
 */
 
 
module Bowling(reset,pointIn,button,pointAll,hundred7SegCode,ten7SegCode,current7SegCode);
input reset;
input [3:0]pointIn;
input button;

output reg [10:0] pointAll;
output wire [0:6] hundred7SegCode;
output wire [0:6] ten7SegCode;
output wire [0:6] current7SegCode;
/*
 * pointer to access state now
 */
reg [4:0] pointer;

/*
 * point of each frame
 */
reg [5:0] point1; 
reg [5:0] point2; 
reg [5:0] point3; 
reg [5:0] point4; 
reg [5:0] point5; 
reg [5:0] point6; 
reg [5:0] point7; 
reg [5:0] point8;
reg [5:0] point9;
reg [5:0] point10;

/*
 * each frame have one or two time to access
 */
reg [4:0] point1_1;
reg [4:0] point1_2;

reg [4:0] point2_1;
reg [4:0] point2_2;

reg [4:0] point3_1;
reg [4:0] point3_2;

reg [4:0] point4_1;
reg [4:0] point4_2;

reg [4:0] point5_1;
reg [4:0] point5_2;

reg [4:0] point6_1;
reg [4:0] point6_2;

reg [4:0] point7_1;
reg [4:0] point7_2;

reg [4:0] point8_1;
reg [4:0] point8_2;


reg [4:0] point9_1;
reg [4:0] point9_2;

reg [4:0] point10_1;
reg [4:0] point10_2;
reg [4:0] point10_3;

/*
 * flag check which frame is access done
 */
reg [11:0] frameDone;

reg [2:0] frame1Done;
reg [2:0] frame2Done;
reg [2:0] frame3Done;
reg [2:0] frame4Done;
reg [2:0] frame5Done;
reg [2:0] frame6Done;
reg [2:0] frame7Done;
reg [2:0] frame8Done;
reg [2:0] frame9Done;
reg [4:0] frame10Done;




reg [3:0] pointBuffer;
parameter FRAME_1 = 1,
		  FRAME_2 = 2,
		  FRAME_3 = 3,
		  FRAME_4 = 4,
		  FRAME_5 = 5,
		  FRAME_6 = 6,
		  FRAME_7 = 7,
		  FRAME_8 = 8,
		  FRAME_9 = 9,
		  FRAME_10 = 10,
		  FRAME_DONE = 0;
parameter true = 1,
		  false = 0;
		  
reg [3:0] buffer;
//assign pointBuffer = pointIn;
//assign buffer = 10 - pointBuffer;
always@(*)begin
  pointBuffer <= pointIn;
	buffer <= 10 - pointBuffer; 
end

always@(posedge button)begin
	
	if(pointer == FRAME_1)begin
		if(frame1Done[1] == false)begin
			point1_1 <= pointBuffer;
			
			if(pointBuffer == 10)begin
				frameDone[1] <= false; // chua xong frame 1
				pointer <= pointer + 1;
			
			end
			else begin
				frame1Done[1] <= true; // nem xong luot 1
			
			end
		end
		else begin
			point1_2 <= pointBuffer;
			//buffer <= 10 - pointBuffer;//cap nhat buffer
			if(pointBuffer + point1_1 == 10)begin
				frameDone[1] <= false;
				
			end
			else begin
				frameDone[1] <= true;
				//point1 <= point1_1 + point1_2;
			end
			
			pointer <= pointer + 1;
		
		end
	
	end
	
	else if(pointer == FRAME_2)begin
		if(frame2Done[1] == false)begin
			///////////////////////////////////////////////
			if(frameDone[1] == true)
				//frameDone[1] <= true;
				point1 <= point1_1 + point1_2;
			
			
			point2_1 <= pointBuffer;
			
			if(pointBuffer == 10)begin
				frameDone[2] <= false; // chua xong frame 1
				pointer <= pointer + 1;
			
			end
			else begin
				frame2Done[1] <= true; // nem xong luot 1
				
						
			
			end
		end
		else begin
			point2_2 <= pointBuffer;
			//buffer <= 10 - pointBuffer;//cap nhat buffer
			
			if(pointBuffer + point2_1 == 10)begin
				frameDone[2] <= false;
				
			end
			else begin
				frameDone[2] <= true;
				//point2 <= point2_1 + point2_2;
			end
			
			//////////////////////////////////////
			if(frameDone[1] == false) begin
				if(point1_1 != 10)
					point1 <= 10 + point2_1;//cap nhat space point
			end else begin
				
			
			end
			
			pointer <= pointer + 1;
			
			
		end
	
	end
	
	/* FRAME 3
	 * cap nhat space frame1
	 */
	else if(pointer == FRAME_3)begin						
		if(frame3Done[1] == false)begin
///////////////////////////////////////////////////
			if(frameDone[1] == false)
				if(point1_1 != 10)
					frameDone[1] <= true;//ra dau hieu cap nhat space point
			///2222222222222222222222222
			if(frameDone[2] == true)
				//frameDone[1] <= true;
				point2 <= point2_1 + point2_2;
				
				
				
			
			point3_1 <= pointBuffer;
			
			if(pointBuffer == 10)begin
				frameDone[3] <= false; // chua xong frame 1
				pointer <= pointer + 1;
			
			end
			else begin
				frame3Done[1] <= true; // nem xong luot 1
			
			end
		end
		else begin
		
			//////222222222222222222222222222
			if(frameDone[2] == false) begin
				if(point2_1 != 10)
					point2 <= 10 + point3_1;//cap nhat space point
			end else begin
				
			
			end
			
			point3_2 <= pointBuffer;
			//buffer <= 10 - pointBuffer;//cap nhat buffer
			if(pointBuffer + point3_1 == 10)begin
				frameDone[3] <= false;
				
			end
			else begin
				frameDone[3] <= true;
				//point3 <= point3_1 + pointBuffer;
			end
			
			pointer <= pointer + 1;
			
			///////////////////////////
			if(frameDone[1] == false)begin
			if(point1_1 == 10)begin// frame 1 strike
				//point1 <= 10
				if((frameDone[2] == false)&&(point2_1 == 10))begin
					//if(point2_1 == 10)begin // frame 2 strike
						point1 <= 20 + point3_1;
					
					//end
				end
				else begin
					point1 <= 10 + point2_1 + point2_2;
				
				end
			end
		
		end
		
		end
		
	end
	
	/* FRAME 4
	 * cap nhat strike frame1
	 * cap nhat space frame2
	 */
	else if(pointer == FRAME_4)begin	
		if(frame4Done[1] == false)begin
////////////////////////////////////////////////////
			if(frameDone[1] == false)begin
				frameDone[1] <= true;
				if((frameDone[2] == false)&&(point2_1 == 10))begin
					//if(point2_1 == 10)begin // frame 2 strike
						point1 <= 20 + point3_1;
					
					//end
				end
				
			end
		/////2222222222222222222222222
			if(frameDone[2] == false)
				if(point2_1 != 10)
					frameDone[2] <= true;//ra dau hieu cap nhat space point
		////33333
			if(frameDone[3] == true)
				//frameDone[1] <= true;
				point3 <= point3_1 + point3_2;
				
				
					
			point4_1 <= pointBuffer;
			
			if(pointBuffer == 10)begin
				frameDone[4] <= false; // chua xong frame 1
				pointer <= pointer + 1;
			
			end
			else begin
				frame4Done[1] <= true; // nem xong luot 1
			
			end
		end
		else begin
			//////2222
			if(frameDone[2] == false)begin
				if(point2_1 == 10)begin// frame 1 strike
					//point1 <= 10
					if((frameDone[3] == false)&&(point3_1 == 10))begin
						//if(point2_1 == 10)begin // frame 2 strike
							point2 <= 20 + point4_1;
						
						//end
					end
					else begin
						point2 <= 10 + point3_1 + point3_2;
				
					end
				end
		
			end
			
			///33333
			if(frameDone[3] == false) begin
				if(point3_1 != 10)
					point3 <= 10 + point4_1;//cap nhat space point
			end else begin
				
			
			end
			
			
			
			
			
			point4_2 <= pointBuffer;
			//buffer <= 10 - pointBuffer;//cap nhat buffer
			if(pointBuffer + point4_1 == 10)begin
				frameDone[4] <= false;
				
			end			
			else begin
				frameDone[4] <= true;
				//point4 <= point4_1 + pointBuffer;
			end
			
			pointer <= pointer + 1;
		
		end
		
		
		
	end
	
	/* FRAME 5
	 * cap nhat strike frame 2
	 * cap nhat space frame 3
	 */
	if(pointer == FRAME_5)begin
		if(frame5Done[1] == false)begin
			///////////////////////////222
			if(frameDone[2] == false)begin
				frameDone[2] <= true;
				if((frameDone[3] == false)&&(point3_1 == 10))begin
					//if(point2_1 == 10)begin // frame 2 strike
						point2 <= 20 + point4_1;
					
					//end
				end
				
			end
			////333333333
			if(frameDone[3] == false)
				if(point3_1 != 10)
					frameDone[3] <= true;//ra dau hieu cap nhat space point
			///444444
			if(frameDone[4] == true)
				//frameDone[1] <= true;
				point4 <= point4_1 + point4_2;
		
		
			point5_1 <= pointBuffer;
			
			if(pointBuffer == 10)begin
				frameDone[5] <= false; // chua xong frame 1
				pointer <= pointer + 1;
			
			end
			else begin
				frame5Done[1] <= true; // nem xong luot 1
			
			end
		end
		else begin
			///////////////////////33333
			if(frameDone[3] == false)begin
				if(point3_1 == 10)begin// frame 1 strike
					//point1 <= 10
					if((frameDone[4] == false)&&(point4_1 == 10))begin
						//if(point2_1 == 10)begin // frame 2 strike
							point3 <= 20 + point5_1;
						
						//end
					end
					else begin
						point3 <= 10 + point4_1 + point4_2;
				
					end
				end
		
			end
		
			///444444
			if(frameDone[4] == false) begin
				if(point4_1 != 10)
					point4 <= 10 + point5_1;//cap nhat space point
			end else begin
				
			
			end
		
		
		
		
		
			point5_2 <= pointBuffer;
			//buffer <= 10 - pointBuffer;//cap nhat buffer
			if(pointBuffer + point5_1 == 10)begin
				frameDone[5] <= false;
				
			end
			else begin
				frameDone[5] <= true;
				//point1 <= point1_1 + point1_2;
			end
			
			pointer <= pointer + 1;
		
		end
	
	end
	
	
	if(pointer == FRAME_6)begin
		if(frame6Done[1] == false)begin
		//////////3333333333
			if((frameDone[4] == false)&&(point4_1 == 10))begin
					//if(point2_1 == 10)begin // frame 2 strike
						point3 <= 20 + point5_1;
					
					//end
				end
		////444444
			if(frameDone[4] == false)
					if(point4_1 != 10)
						frameDone[4] <= true;//ra dau hieu cap nhat space point
		////555555
			if(frameDone[5] == true)
				//frameDone[1] <= true;
				point5 <= point5_1 + point5_2;
		
		
			point6_1 <= pointBuffer;
			
			if(pointBuffer == 10)begin
				frameDone[6] <= false; // chua xong frame 1
				pointer <= pointer + 1;
			
			end
			else begin
				frame6Done[1] <= true; // nem xong luot 1
			
			end
		end
		else begin
		/////4444444
			if(frameDone[4] == false)begin
				if(point4_1 == 10)begin// frame 1 strike
					//point1 <= 10
					if((frameDone[5] == false)&&(point5_1 == 10))begin
						//if(point2_1 == 10)begin // frame 2 strike
							point4 <= 20 + point6_1;
						
						//end
					end
					else begin
						point4 <= 10 + point5_1 + point5_2;
				
					end
				end
		
			end
		
			///////////////555555
			if(frameDone[5] == false) begin
				if(point5_1 != 10)
					point5 <= 10 + point6_1;//cap nhat space point
			end else begin
				
			
			end
		
		
		
		
			point6_2 <= pointBuffer;
			//buffer <= 10 - pointBuffer;//cap nhat buffer
			if(pointBuffer + point6_1 == 10)begin
				frameDone[6] <= false;
				
			end
			else begin
				frameDone[6] <= true;
				//point1 <= point1_1 + point1_2;
			end
			
			pointer <= pointer + 1;
		
		end
	
	end
	
	/// frame 7
	if(pointer == FRAME_7)begin
		if(frame7Done[1] == false)begin
		//////444444444
			if(frameDone[4] == false)begin
				frameDone[4] <= true;
				if((frameDone[5] == false)&&(point5_1 == 10))begin
					//if(point2_1 == 10)begin // frame 2 strike
						point4 <= 20 + point6_1;
					
					//end
				end
			end
		
		////555555
			if(frameDone[5] == false)
				if(point5_1 != 10)
					frameDone[5] <= true;//ra dau hieu cap nhat space point
		////666666
			if(frameDone[6] == true)
				//frameDone[1] <= true;
				point6 <= point6_1 + point6_2;
			
		
		
		
		
			point7_1 <= pointBuffer;
			
			if(pointBuffer == 10)begin
				frameDone[7] <= false; // chua xong frame 1
				pointer <= pointer + 1;
			
			end
			else begin
				frame7Done[1] <= true; // nem xong luot 1
			
			end
		end
		else begin
		////////555555
			if(frameDone[5] == false)begin
				if(point5_1 == 10)begin// frame 1 strike
					//point1 <= 10
					if((frameDone[6] == false)&&(point6_1 == 10))begin
						//if(point2_1 == 10)begin // frame 2 strike
							point5 <= 20 + point7_1;
						
						//end
					end
					else begin
						point5 <= 10 + point6_1 + point6_2;
				
					end
				end
		
			end
			
			////666666
			if(frameDone[6] == false) begin
				if(point6_1 != 10)
					point6 <= 10 + point7_1;//cap nhat space point
			end else begin
				
			
			end
		
		
		
		
		
			point7_2 <= pointBuffer;
			//buffer <= 10 - pointBuffer;//cap nhat buffer
			if(pointBuffer + point7_1 == 10)begin
				frameDone[7] <= false;
				
			end
			else begin
				frameDone[7] <= true;
				//point1 <= point1_1 + point1_2;
			end
			
			pointer <= pointer + 1;
		
		end
	
	end
	
		/// frame 8
	if(pointer == FRAME_8)begin
		if(frame8Done[1] == false)begin
		////55555555555555
			if(frameDone[5] == false)begin
				frameDone[5] <= true;
				if((frameDone[6] == false)&&(point6_1 == 10))begin
					//if(point2_1 == 10)begin // frame 2 strike
						point5 <= 20 + point7_1;
					
					//end
				end
				
			end
		///666666
			if(frameDone[6] == false)
					if(point6_1 != 10)
						frameDone[6] <= true;//ra dau hieu cap nhat space point
		////7777777
			if(frameDone[7] == true)
				//frameDone[1] <= true;
				point7 <= point7_1 + point7_2;
		
		
		
			point8_1 <= pointBuffer;
			
			if(pointBuffer == 10)begin
				frameDone[8] <= false; // chua xong frame 1
				pointer <= pointer + 1;
			
			end
			else begin
				frame8Done[1] <= true; // nem xong luot 1
			
			end
		end
		else begin
		////////666666
			if(frameDone[6] == false)begin
				if(point6_1 == 10)begin// frame 1 strike
					//point1 <= 10
					if((frameDone[7] == false)&&(point7_1 == 10))begin
						//if(point2_1 == 10)begin // frame 2 strike
							point6 <= 20 + point8_1;
						
						//end
					end
					else begin
						point6 <= 10 + point7_1 + point7_2;
				
					end
				end
		
			end
		///7777777
			if(frameDone[7] == false) begin
				if(point7_1 != 10)
					point7 <= 10 + point8_1;//cap nhat space point
			end else begin
				
			
			end
		
		
		
		
			point8_2 <= pointBuffer;
			//buffer <= 10 - pointBuffer;//cap nhat buffer
			if(pointBuffer + point8_1 == 10)begin
				frameDone[8] <= false;
				
			end
			else begin
				frameDone[8] <= true;
				//point1 <= point1_1 + point1_2;
			end
			
			pointer <= pointer + 1;
		
		end
	
	end
	
		/// frame 9
	if(pointer == FRAME_9)begin
		if(frame9Done[1] == false)begin
		//////666666
			if(frameDone[6] == false)begin
				frameDone[6] <= true;
				
				if((frameDone[7] == false)&&(point7_1 == 10))begin
					//if(point2_1 == 10)begin // frame 2 strike
						point6 <= 20 + point8_1;
					
					//end
				end
			end
		/////7777777
			if(frameDone[7] == false)
					if(point7_1 != 10)
						frameDone[7] <= true;//ra dau hieu cap nhat space point
		
		
		
		////888 nomal update point
			if(point8_1 + point8_2 != 10)begin
				point8 <= point8_1 + point8_2;
			
			end
			
			
			
			point9_1 <= pointBuffer;
			
			if(pointBuffer == 10)begin
				frameDone[9] <= false; // chua xong frame 1
				pointer <= pointer + 1;
			
			end
			else begin
				frame9Done[1] <= true; // nem xong luot 1
			
			end
		end
		else begin
		//////////7777777
			if(frameDone[7] == false)begin
				if(point7_1 == 10)begin// frame 1 strike
					//point1 <= 10
					if((frameDone[8] == false)&&(point8_1 == 10))begin
						//if(point2_1 == 10)begin // frame 2 strike
							point7 <= 20 + point9_1;
						
						//end
					end
					else begin
						point7 <= 10 + point8_1 + point8_2;
				
					end
				end
		
			end
		///////888
			
		
		
		
			point9_2 <= pointBuffer;
			//buffer <= 10 - pointBuffer;//cap nhat buffer
			if(pointBuffer + point9_1 == 10)begin
				frameDone[9] <= false;
				
			end
			else begin
				frameDone[9] <= true;
				//point1 <= point1_1 + point1_2;
			end
			
			pointer <= pointer + 1;
		
		end
	
	end
	
	
	
		/// frame 10
	else if(pointer == FRAME_10)begin
		if(frame10Done[1] == false)begin
		//////////////7777777
			if(frameDone[7] == false) begin
				frameDone[7] <= true;
				if((frameDone[8] == false)&&(point8_1 == 10))begin
					//if(point2_1 == 10)begin // frame 2 strike
						point7 <= 20 + point9_1;
					
					//end
				end
			end
		////8888 strike
			if(point8_1 == 10)begin
				if(point9_1 == 10)
					point8 <= 20 + pointBuffer;
				else 
					point8 <= 10 + point9_1 + point9_2;
			
			end else if((point8_1 != 10) && (point8_1 + point8_2 == 10)) begin
				point8 <= 10 + point9_1;
			
			end
			
		///99999 nomal
			if(point9_1 + point9_2 != 10)
				point9 <= point9_1 + point9_2;
			else if((point9_1 != 10) && (point9_1 + point9_2 == 10)) begin
				point9 <= 10 + pointBuffer;
			
			
			end
			
			
			point10_1 <= pointBuffer;
			///
			frame10Done[1] <= true;
			
			
		end
		else if(frame10Done[2] == false)  begin
			frameDone[8] <= true;
			if(point9_1 == 10)
				point9 <= 10 + point10_1 + pointBuffer;
		
			point10_2 <= pointBuffer;
			frame10Done[2] <= true;
		
		
		end
		else if(frame10Done[3] == false)begin
			
			frameDone[9] <= true;
		
			if(point10_1 == 10)begin
				point10 <= 10 + point10_2 + pointBuffer;
			
			end
			else if(point10_1 + point10_2 == 10)begin
				point10 <= 10 + pointBuffer;
			
			end
			else
				//frameDone[10] <= true;
				point10 <= point10_1 + point10_2;
				
				
			frame10Done[3] <= true;
		
		end
		else if(frame10Done[4] == false)begin
			//frameDone[10] <= true;
			pointAll <= point1 + point2 + point3 + point4 + point5 + point6 + point7 + point8 + point9 + point10;
			
			end
			else begin end
	end
end

//OutPoint frame1(frameDone[1],point1,point1Test);
//test

OutReg7Seg outreg(.point(pointAll),.hundred7SegCode(hundred7SegCode),.ten7SegCode(ten7SegCode),.current7SegCode(current7SegCode));

always@(posedge reset)begin
  
	pointer <= FRAME_1;
	frameDone <= 0;
	pointAll <= 0;
	
	frame1Done <= 0;
	frame2Done <= 0;
	frame3Done <= 0;
	frame4Done <= 0;
	frame5Done <= 0;
	frame6Done <= 0;
	frame7Done <= 0;
	frame8Done <= 0;
	frame9Done <= 0;
	frame10Done <= 0;
	
	point1 <= 0;
	point2 <= 0;
	point3 <= 0;
	point4 <= 0;
	point5 <= 0;
	point6 <= 0;
	point7 <= 0;
	point8 <= 0;
	point9 <= 0;
	point10 <= 0;
	
	
	point1_1 <= 0;
	point1_2 <= 0;
	point2_1 <= 0;
	point2_2 <= 0;
	point3_1 <= 0;
	point3_2 <= 0;
	point4_1 <= 0;
	point4_2 <= 0;
	point5_1 <= 0;
	point5_2 <= 0;
	point6_1 <= 0;
	point6_2 <= 0;
	point7_1 <= 0;
	point7_2 <= 0;
	point8_1 <= 0;
	point8_2 <= 0;
	point9_1 <= 0;
	point9_2 <= 0;
	point10_1 <= 0;
	point10_2 <= 0;
	point10_3 <= 0;
	
	pointAll <= 0;


end

endmodule 