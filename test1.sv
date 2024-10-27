// QUE: Write a constraint for a 32-bit variable such that exactly 12 non-consecutive 1's are generated.

class demo;

  rand bit [31 : 0] a;

  constraint my1_c {$countones(a) == 12;}

  constraint my2_c {

    foreach (a[i]) {
      if (i < $size(a) - 1) {if (a[i]) a[i] != a[i+1];}
    }

  }

endclass : demo

demo d1;

module test1 ();

  initial begin
    d1 = new();

    repeat (5) begin

      assert (d1.randomize());

      $display("a = %b", d1.a);

    end

  end

endmodule

