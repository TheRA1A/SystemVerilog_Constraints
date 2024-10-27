// QUE: Write a constraint to generate random even numbers between 50 and 100.

class demo;

  randc int a;

  constraint my_c {
    a inside {[50 : 100]};
    (a % 2) == 0;
  }

endclass

demo d1;

module test29;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end

  end

endmodule



