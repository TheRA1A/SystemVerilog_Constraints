//TODO:Write a constraint to generate unique numbers between 99 and 100.
class temp;
    rand int a;
    real b;
    constraint my_c{a inside {[9900:10000]};}
    function void post_randomize();
            b = (a/100.00);
    endfunction
endclass
temp t1;
module test35;
initial begin
    t1=new;
    repeat(5)
    begin
        assert(t1.randomize());
        $display("b = %0.2f",t1.b);
    end
end
endmodule
