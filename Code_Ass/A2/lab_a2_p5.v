module lab_a2_p5 (
    input [0:0] a, b, c, d,
    output [0:0] more1_somin, more1_pomax
);
    
assign more1_somin = a&b&d | a&b&c | b&c&d | a&c&d;
assign more1_pomax = (a|b) & (a|c) & (a|d) & (b|c) & (b|d) & (c|d);

endmodule