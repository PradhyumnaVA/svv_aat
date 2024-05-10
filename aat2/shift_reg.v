`include "fa.v"
//`include "op.v"
module shift_reg (
    input [3:0] in_a, in_b,
    input clk,rst,
    // output reg [7:0] 
    output [4:0]op
);
integer i = 0;

reg out_a, out_b;

fa fa(.a(out_a),.b(out_b),.clk(clk),.rst(rst),.op(op));
//	.sum(sum),.carry(carry));
//op op(.sum(sum),.carry(carry),.clk(clk),.rst(rst),.op(op));
    always @(posedge clk, posedge rst) begin
        if(rst) begin
            {out_a,out_b} <= 2'b00;
            // i<=0;
        end
        else if(i<4)begin
            out_a <= in_a[i];
            out_b <= in_b[i];
            i <= i+1;
        end
    end
    
endmodule
