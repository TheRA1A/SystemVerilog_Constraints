// QUE: Write a constraint to generate specific values: 25, 27, 30, 36, 40, 45.

class demo;

  randc int a;

  constraint my_c {
    a > 24;
    a < 46;
    ((a % 5) == 0) || ((a % 9) == 0);
    a != 35;
  }

endclass : demo

demo d1;

module test3;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end
  end

endmodule

