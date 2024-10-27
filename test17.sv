// QUE: Write a constraint to generate the sequence 0102030405.

class demo;

  rand int a;
  int index;
  int inx;

  constraint my_c {
    if ((index % 2) == 0)
    a == 0;
    else
    a == inx;
  }

  function void post_randomize();
    index++;
    if ((index % 2) == 1) begin
      inx++;
    end
  endfunction

endclass : demo


demo d1;

module test17 ();

  initial begin
    d1 = new();
    repeat (10) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end

endmodule
