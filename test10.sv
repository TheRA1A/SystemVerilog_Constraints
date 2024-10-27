// QUE: Write a constraint to ensure that the sum of three consecutive numbers is even.

class demo;

  rand bit [7:0] a[];

  constraint my_c {a.size inside {[5 : 10]};}

  constraint my2_c {foreach (a[i]) if (i < a.size - 2) ((a[i] + a[i+1] + a[i+2]) % 2) == 0;}

endclass : demo


demo d1;

module test10;

  initial begin
    d1 = new();

    assert (d1.randomize());
    $display("a = %p", d1.a);

  end


endmodule

