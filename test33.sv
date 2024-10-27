//TODO:Write a code snippet to randomize only the 12th bit of a variable.

class temp;
    rand bit a;
    bit [15:0] b;
  
    function void post_randomize();
        b[12]=a;  
    endfunction
endclass
temp t1;
module test33; 
    initial begin
        t1 = new();
        repeat(10) begin
            assert(t1.randomize());
            $display("a: %b",t1.a);
        		$display("b: %b",t1.b);
				end
    end
endmodule
