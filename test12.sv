// QUE: Write a constraint to generate values in increasing order in between
// 1 to 500 and difference between current and previous values should be in
// between 1 to 10

class demo;

  rand int a;

  int prev;

  constraint my1_c {a > prev;}

  constraint my2_c {(a - prev) inside {[1 : 10]};}

  constraint my3_c {a inside {[1 : 500]};}


  function void post_randomize();
    prev = a;
  endfunction

endclass : demo

demo d1;

module test12;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end

endmodule
