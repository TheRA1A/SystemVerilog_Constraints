// QUE: Write a constraint where the number of 1's in one variable depends on another variable.

class demo;

  rand bit [2:0] num;
  rand bit [7:0] a;

  constraint my_c {$countones(a) == num;}

endclass : demo

demo d1;

module test14;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %b \t no_of_ones = %0d", d1.a, d1.num);
    end
  end

endmodule
