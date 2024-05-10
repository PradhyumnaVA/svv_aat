module fa (
    input a,b,clk,rst,
    output reg [4:0]op
);

//reg c;
reg sum, carry;
integer count=0;

always @(posedge clk, posedge rst) begin
    if (rst) begin
        //c <= 0;
        sum<=0;
        carry<=0;
	op<=5'd0;
        // count <= 0;
        // flag<=0;
    end
    else if(count<6) begin
        sum <= a^b^carry;
        carry <= (a&b)|(b&carry)|(carry&a);
        //c <= carry;
	if(count>1) op[count-2]<=sum;
        count<=count+1;
	if(count==5) op[count-1]<=carry;
    end 
end
    
endmodule
