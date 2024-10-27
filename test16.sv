// QUE: Write a constraint to generate the pattern 01010101.

class demo;

  rand bit a;
  int index;

  constraint my_c {
    if ((index % 2) == 1)
    a == 1'b1;
    else
    a == 1'b0;
  }

  function void post_randomize();
    index++;
  endfunction


endclass : demo

demo d1;

module test16;

  initial begin
    d1 = new();
    repeat (10) begin
      assert (d1.randomize());
      $write("%b ", d1.a);
    end

  end

endmodule
