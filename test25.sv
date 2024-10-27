// QUE: Write a constraint to generate even numbers between 10 and 30.

class demo;

  randc int a;

  constraint my_c {
    a inside {[10 : 30]};
    (a % 2) == 0;
  }

endclass

demo d1;

module test25;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %0d", d1.a);
    end

  end

endmodule

