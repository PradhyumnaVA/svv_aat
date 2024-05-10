interface sa_inter(input bit clk);
    logic [3:0] in_a, in_b;
    logic rst;
    logic [4:0]op;

    clocking cb@(posedge clk);
	    default input #2ns output #3ns;
	    input [4:0]op;
	    output [3:0]in_a,in_b;
    endclocking

    modport tb(clocking cb, output rst);

    endinterface

