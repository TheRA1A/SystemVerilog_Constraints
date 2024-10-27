// QUE: Write a constraint to generate a sequence where even numbers appear in odd positions.

class demo;

  rand bit [7:0] a;

  int index = 0;

  constraint my_c {
    if ((index % 2) == 1)
    (a % 2) == 0;
    else
    if ((index % 2) == 0) (a % 2) == 1;
  }

  function void post_randomize();
    index++;
  endfunction


endclass : demo

demo d1;

module test8;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d \t index = %0d", d1.a, d1.index - 1);
    end
  end

endmodule
