// QUE: Write a constraint for a 16-bit variable such that no two consecutive 1's are generated.

class demo;

  rand bit [15:0] a;

  constraint my_c {foreach (a[i]) if (i < $size(a) - 1) if (a[i]) a[i] != a[i+1];}

endclass : demo

demo d1;

module test5 ();

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %b", d1.a);
    end
  end

endmodule
