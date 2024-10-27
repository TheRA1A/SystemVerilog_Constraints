// QUE: Write a constraint to generate a 10-bit variable with alternating numbers.

class demo;

  rand bit [9:0] a;

  bit [9:0] prev;

  constraint my_c {foreach (a[i]) if (i < $size(a) - 1) a[i] != a[i+1];}

  constraint my1_c {a != prev;}

  function void post_randomize();
    prev = a;
  endfunction

endclass : demo

demo d1;

module test18 ();

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %b", d1.a);
    end
  end

endmodule
