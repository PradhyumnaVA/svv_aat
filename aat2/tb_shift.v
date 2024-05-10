module tb_shift;
reg [3:0] in_a, in_b;
reg clk,rst;
    // output reg [7:0] 
wire [4:0]op;

shift_reg dut(.in_a(in_a),.in_b(in_b),.clk(clk),.rst(rst),.op(op));

initial begin 
clk=0; rst=1; in_a=4'b1000; in_b=4'b1111;
#4 rst=0;
#100 $finish;
end

always #5 clk=~clk;

initial begin 
$dumpfile("shift.vcd");
$dumpvars;
end

endmodule
