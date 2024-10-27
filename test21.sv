// QUE: Write a constraint to generate the alternating positive-negative sequence: 5, -10, 15, -20, 25, -30.

class demo;

  rand int a;
  int index = 1;

  constraint my_c {
    if ((index % 2) == 1)
    a == (index * 5);
    else
    a == -(index * 5);

  }

  function void post_randomize();
    index++;
  endfunction

endclass : demo

demo d1;

module test21;

  initial begin
    d1 = new();
    repeat (10) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end


endmodule
