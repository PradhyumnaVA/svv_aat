`include "jk_tb.sv"
`include "jk_ff.v"

module top_jk ();
    bit clk = 0;

    jk_inter I1(clk);
    jk_tb inst1(I1.tb);
    jk_ff DUT(.*);

    always #5 clk = ~clk;

    initial begin
        $dumpfile("ff_jk.vcd");
        $dumpvars;
        $monitor($time, "rst = %d, j = %d, k = %d, q = %d",I1.rst,I1.j, I1.k, I1.q);
    end                 
                         
endmodule                        
                        
                        
                      
