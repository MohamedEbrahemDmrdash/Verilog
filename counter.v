module counter(UP_DOWN,RESET,CLK,EN,PCOUNT);
input UP_DOWN ,RESET,EN,CLK;
output reg [2:0]PCOUNT ;
always @(posedge CLK or RESET)
begin
if(RESET)//Asynchronous reset
begin
PCOUNT <= 3'b0;
end
else if(UP_DOWN & EN)
begin
PCOUNT <= PCOUNT +1;
end
else if(~UP_DOWN & EN)
begin
PCOUNT<=PCOUNT-1;
end
else
PCOUNT<=PCOUNT;
end
endmodule