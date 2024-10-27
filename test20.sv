// QUE: Write a constraint to generate the palindrome-like sequence 1234554321.

class demo;

  rand int a;
  int prev;
  int index = 1;

  constraint my_c {
    if (index <= 5) {
      a == prev + 1;
    } else
    if (index == 6)
    a == prev;
    else {
      a == prev - 1;
    }
  }

  function void post_randomize();
    prev = a;
    index++;
    if (index > 10) begin
      index = 2;
    end
  endfunction



endclass : demo

demo d1;

module test20;
  initial begin
    d1 = new();
    repeat (20) begin
      assert (d1.randomize());
      $display("a = %0d \t index = %0d", d1.a, d1.index - 1);
    end
  end
endmodule

// constraint c_palindrome {
//     // Limit to 4 digits (1000-9999)
//     num inside {[1000:9999]};
//     // First digit equals last digit
//     (num / 1000) == (num % 10);
//     // Second digit equals second-to-last digit
//     ((num / 100) % 10) == ((num / 10) % 10);
//   }
// endclass
