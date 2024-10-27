// QUE: Write a  constraint to generate consecutive elements in a 2D array.

class demo;

  rand int a[][];

  constraint my1_c {a.size == 16;}

  constraint my2_c {foreach (a[i]) a[i].size == 5;}

  constraint my3_c {
    foreach (a[i, j])
    a[i][j] inside {[1 : 9]};
  }

  constraint my4_c {
    foreach (a[i])
    foreach (a[i][j]) if ((i < a.size - 1) && (j < a[0].size - 1)) (a[i][j] - a[i][j+1]) == 1;
  }

  constraint my5_c {
    foreach (a[i, j]) if ((i < a.size - 1) && (j < a[0].size - 1)) a[i][j] - a[i+1][j] == 1;
  }

endclass : demo

demo d1;

module test24;
  initial begin
    d1 = new();
    assert (d1.randomize());
    foreach (d1.a[i]) begin
      $display("a = %p", d1.a[i]);
    end
    $display("depth = %0d", d1.a.size);
    $display("width  = %0d", d1.a[0].size);
  end
endmodule
