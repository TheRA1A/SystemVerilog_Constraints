// QUE: How can you generate Gray code sequences using SystemVerilog?

class demo;

  rand bit [3:0] bin;
  bit [3:0] gray;

  function void post_randomize();

    gray[3] = bin[3];

    for (int i = $size(bin) - 1; i > 0; i--) begin
      gray[i-1] = bin[i] ^ bin[i-1];
    end

    // gray[2] = bin[3] ^ bin[2];
    // gray[1] = bin[2] ^ bin[1];
    // gray[0] = bin[1] ^ bin[0];

    $display("bin  = %b", bin);
    $display("gray = %b\n", gray);

  endfunction

endclass : demo

demo d1;

module test2 ();

  initial begin

    d1 = new();

    repeat (5) begin
      assert (d1.randomize());
    end

  end

endmodule
