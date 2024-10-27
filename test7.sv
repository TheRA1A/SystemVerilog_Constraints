// QUE: Write a constraint to avoid generating the same 4-bit value as any of the last 5 occurrences.

class demo;
  randc bit [3:0] a;
  bit [3:0] prev[$];

  constraint my_c {foreach (prev[i]) a != prev[i];}

  function void post_randomize();
    prev.push_back(a);
    if (prev.size() > 5) prev.delete(0);
  endfunction
endclass : demo

module test7;
  demo d1;

  initial begin
    d1 = new();
    repeat (10) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end
endmodule
