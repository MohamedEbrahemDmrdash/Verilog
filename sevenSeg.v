module sevenSeg(Reset,dec,bcd);
	input [3:0]dec;
	input Reset;
	output reg [6:0] bcd;

always@(dec or Reset)
begin 

if(Reset)
bcd = 7'b1111110;   // 0 when reset
else

case(dec)

4'b0000 :  bcd =7'b1111110; 
4'b0001 :  bcd = 7'b0110000; 
4'b0010 : bcd = 7'b1101101; 
4'b0011 : bcd = 7'b1111001; 
4'b0100 : bcd = 7'b0110011; 
4'b0101 : bcd = 7'b1011011;
4'b0110 : bcd = 7'b1011111;
4'b0111 : bcd = 7'b1110000;
4'b1000 : bcd =7'b1111111; 
4'b1001 : bcd =7'b1111011; 

default : bcd = 7'b1111110; //0 default  
endcase 
end


endmodule 