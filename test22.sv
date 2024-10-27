// QUE: Write a constraint to generate the sequence 9, 19, 29, 39, 49, 59, 69, 79.

class demo;

  rand int a;
  int prev = 9;

  constraint my_c {a == prev;}

  function void post_randomize();
    prev = a + 10;
  endfunction

endclass : demo

demo d1;

module test22;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end

  end

endmodule
