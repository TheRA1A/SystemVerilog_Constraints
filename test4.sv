//  QUE: Create a 62-bit variable constraint such that bits 0-31 are 1 and the remaining bits are 0.

class demo;

  rand bit [61:0] a;

  constraint my_c {
    a[31:0] == '1;
    a[61:32] == '0;
  }

endclass : demo

demo d1;

module test4;

  initial begin
    d1 = new();
    repeat (5) begin
      assert (d1.randomize());
      $display("a = %b", d1.a);
    end
  end


endmodule
