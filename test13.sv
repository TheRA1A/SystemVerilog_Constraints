// QUE: Write a constraint for a 2D array with specific constraints.

class demo;

  rand int array[][];  // Depth x width

  constraint my_c {array.size == 16;}

  constraint my2_c {foreach (array[i]) array[i].size == 5;}

  constraint my3_c {
    foreach (array[i, j])
    array[i][j] inside {[1 : 10]};
  }

endclass : demo

demo d1;

module test13;
  initial begin
    d1 = new();
    assert (d1.randomize());
    foreach (d1.array[i]) begin
      $display("array = %p", d1.array[i]);
    end
    $display("depth = %0d", d1.array.size);
    $display("width = %0d", d1.array[0].size);
  end
endmodule

