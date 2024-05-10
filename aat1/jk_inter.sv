interface jk_inter(input bit clk);
    logic j,k,rst,q;

    modport rtl (
    input j,k,rst,clk,
    output q
    );

    modport tb (
    input q,
    output j,k,rst
    );

endinterface //jk_inter(input bit clk)logic j,k,rst,q;

