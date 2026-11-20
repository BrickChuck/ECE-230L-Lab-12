module top(
    input sw, // w
    output [9:0] led, // see IO table
    input btnC, // clk
    input btnU // reset
);

onehot part1(
.w(sw),
.clk(btnC),
.z(led[0]),
.A(led[2]),
.B(led[3]),
.C(led[4]),
.D(led[5]),
.E(led[6]),
.rst(btnU)
);

binary part2(
.w(sw),
.clk(btnC),
.rst(btnU),
.z(led[1]),
.bin(led[9:7])
);
    

endmodule