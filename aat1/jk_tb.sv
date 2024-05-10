`include "jk_inter.sv"

module jk_tb (jk_inter.tb T1);

initial begin
    T1.rst = 1;
    T1.j = 0;
    T1.k = 0;
    #10 T1.rst = 0;
    #100 $finish;
end

always #10 T1.k = ~T1.k;
always #20 T1.j = ~T1.j;

endmodule