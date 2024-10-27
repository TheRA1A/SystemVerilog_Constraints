// QUE: Write a constraint to generate the Fibonacci series.


class demo;

  rand int a[];

  constraint my_c {
    a.size inside {[5 : 11]};

    foreach (a[i])
    if (i == 0)
    a[i] == 0;
    else
    if (i == 1)
    a[i] == 1;
    else
    a[i] == a[i-1] + a[i-2];

  }


endclass : demo

demo d1;

module test27;

  initial begin
    d1 = new();
    assert (d1.randomize());
    $display("Fibonacci: %p", d1.a);
  end
endmodule

