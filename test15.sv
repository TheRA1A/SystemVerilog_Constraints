// QUE: Write a constraint to ensure that two queues contain different elements.

class demo;

  rand bit [3:0] q1[$];
  rand bit [3:0] q2[$];

  constraint my1_c {
    q1.size == q2.size;
    q1.size inside {[1 : 10]};
  }

  constraint my2_c {foreach (q1[i]) foreach (q2[j]) q1[i] != q2[j];}

endclass : demo

demo d1;

module test15;

  initial begin
    d1 = new();
    assert (d1.randomize());
    $display("queue1 = %p", d1.q1);
    $display("queue2 = %p", d1.q2);
  end

endmodule
