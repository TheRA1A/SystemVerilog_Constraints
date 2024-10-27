// QUE: Write a constraint to generate unique numbers without using the unique keyword.

class demo;

  randc bit [3:0] a;

endclass : demo

demo d1;

module test30;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end

endmodule
