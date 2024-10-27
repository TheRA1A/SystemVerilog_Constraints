// QUE: Write a constraint to generate unique divisible of 3.

class demo;

  randc bit [7:0] a;

  constraint my_c {(a % 3) == 0;}

endclass : demo

demo d1;

module test9 ();

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end

endmodule
