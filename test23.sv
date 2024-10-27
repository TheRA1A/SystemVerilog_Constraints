// QUE: Write a constraint to generate consecutive and non-consecutive numbers in a fixed array.

class demo;

  rand bit [3:0] a[10];
  rand bit mode;

  constraint my_c {
    if (mode) {
      foreach (a[i]) if (i < $size(a) - 1) (a[i] - a[i+1]) == 1;
    } else {
      foreach (a[i]) if (i < $size(a) - 1) (a[i] - a[i+1]) != 0;
    }
  }



endclass : demo

demo d1;

module test23;

  initial begin
    d1 = new();
    assert (d1.randomize() with {mode == 1;});
    $display("consecutive     a = %p", d1.a);
    assert (d1.randomize() with {mode == 0;});
    $display("non-consecutive a = %p", d1.a);
  end

endmodule
