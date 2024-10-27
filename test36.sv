// TODO:Write a code to generate a random floating-point number between 1.35 and 2.57.
class temp;
rand int a;
real b;

constraint c1 {a inside{[135:257]};}

function void post_randomize();
    b = (a/100.0);
    $display("b = %0.2f",b);
endfunction

endclass
 temp t_h;
 module test36;
    initial begin
        t_h=new();
        repeat(5)
        begin
        assert(t_h.randomize());
            end
    end
 endmodule
