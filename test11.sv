// QUE: Write a constraint where a variable's range of 0-100 has 10% probability and 101-255 has 30% probability.


class demo;

  rand bit [8:0] a;

  constraint my_c {
    a dist {
      [  0 : 100] :/ 1,  // 10 % prob = 1/10
      [101 : 255] :/ 3,  // 30 % prob = 3/10
      [256 : 511] :/ 6  // 60 % prob = 6/10
    };
  }

endclass : demo

demo d1;

module test11;
  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end
endmodule

