module tb_T_FF_pos_rst_n();

    reg T, clk, rst_n;
    wire Q, Qn;
    T_FF_pos_rst_n_by_JKFF tff(T, clk, rst_n, Q, Qn);

    initial begin
        $monitor ("%d %d %d %d %d", T, clk, rst_n, Q, Qn);
        clk = 1;
        forever begin
            #5 clk = ~clk;
        end
        #100 $finish;
    end

    initial fork
        T = 1;
        #3 T = 0;
        #18 T = 1;
        #33 T = 0;
        #48 T = 1;
        #63 T = 0;
        #78 T = 1;
        #93 T = 0;
        #100 $finish;
    join

    initial fork
        rst_n = 0;
        #43 rst_n = 1;
    join

endmodule