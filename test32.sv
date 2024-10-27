// QUE: Write a constraint to generate alternating pairs of 0 and 1.

class demo;

  rand bit a;
  bit prev;

  constraint my_c {a != prev;}

  function void post_randomize();
    prev = a;
    $write("%b ", a);
  endfunction

endclass : demo


demo d1;

module test32;

  initial begin

    d1 = new();
    repeat (10) begin
      assert (d1.randomize());
    end

  end


endmodule
