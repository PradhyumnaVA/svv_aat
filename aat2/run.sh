#!/bin/bash

iverilog shift_reg.v tb_shift.v
./a.out
gtkwave shift.vcd
