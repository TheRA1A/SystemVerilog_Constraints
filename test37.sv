//TODO:Write a constraint for sorting elements in a dynamic array.
class temp;
    rand int a[];
    constraint my_c{a.size inside{[5:10]};}
    constraint my_c1{foreach(a[i])
                        if(i<a.size-1)
                            a[i]<a[i+1];}
    constraint my_c2{foreach(a[i])
                    a[i] inside {[1:99]};}
endclass
temp t1;
module test37;
initial begin
    t1 = new;
    repeat(5)
    begin
        assert(t1.randomize());
        $display("a %p",t1.a);
    end
end
endmodule
