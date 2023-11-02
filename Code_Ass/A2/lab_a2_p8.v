module lab_a2_p8 (
    input [3:0] in,
    output [0:0] more1
);

wire [0:0] w1, w2;
MUX_8_1 m1(in[2:0], 8'b1110_1000, w1);
MUX_8_1 m2(in[2:0], 8'b1000_0000, w2);
assign more1 = in[3] & w1 | ~in[3] & w2;

endmodule