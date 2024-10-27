//  QUE: Write a constraint to generate the sequence 1122334455.

class demo;

  rand int a;
  int index;

  constraint my_c {a == (index + 2) / 2;}

  function void post_randomize();
    index++;
  endfunction


endclass : demo

demo d1;

module test19;
  initial begin
    d1 = new();
    repeat (10) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end
endmodule
