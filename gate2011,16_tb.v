module pos_expression_tb;

    reg a;
    reg b;
    reg c;

    wire f;
    pos_expression uut (
        .a(a), 
        .b(b), 
        .c(c), 
        .f(f)
    );

    initial begin
        $display("A B C | F");
        $display("-------------");

        for (integer i = 0; i < 8; i = i + 1) begin
            {a, b, c} = i;
            #10; 
            $display("%b %b %b | %b", a, b, c, f);
        end
        $finish;
    end

endmodule
