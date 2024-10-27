// QUE: Write a constraint to print the pattern 1122112211.

class demo;

  rand int a;
  int index;

  constraint my_c {
    if (((index % 4) == 0) || ((index % 4) == 1))
    a == 1;
    else
    a == 2;
  }

  function void post_randomize();
    index++;
  endfunction

endclass

demo d1;

module test31;
  initial begin
    d1 = new();
    repeat (20) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end
endmodule
