// QUE: Write a constraint to generate the factorial of a given number.

class demo;

  function int fact(int a);

    int temp = 1;

    for (int i = 1; i <= a; i++) begin
      temp = temp * i;
    end

    return temp;

  endfunction


endclass : demo

demo d1;

module test26;

  int t;

  initial begin

    d1 = new();

    t  = 5;

    $display("factorial of t = %0d", d1.fact(t));

  end

endmodule
