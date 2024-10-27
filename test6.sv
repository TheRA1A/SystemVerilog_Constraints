// QUE: Write a constraint to generate a 32-bit number where exactly one bit is high.

class demo;

  rand bit [31:0] a;

  constraint my_c {$countones(a) == 1;}

endclass : demo

demo d1;

module test6 ();

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %b", d1.a);
    end
  end

endmodule
