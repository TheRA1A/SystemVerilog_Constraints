//TODO:Write a code to generate random number is an Armstrong number. abc=a^3 + b^3 + c^3
class temp;
    rand int array[];
    int num_digits=4;
    constraint my_c{array.size==num_digits;}
    constraint my1_c{foreach(array[i])
                    array[i] inside {[1:9]};}
    // constraint my2_c{array[0]**3+array[1]**3+array[2]**3 == array[2]*100 + array[1]*10 + array[0]*1;}
     constraint armstrong_c {
        let sum = 0;
        foreach(array[i]) {
            sum += array[i] ** num_digits;
        }
        
        let number = 0;
        foreach(array[i]) {
            number = number * 10 + array[i];
        }
        
        sum == number;
    }
    

endclass
temp t1;
module test34;
    initial begin
        t1=new;
        repeat(5)
        begin
            assert(t1.randomize());
            $display("array %p",t1.array);
            //  $display("array %0d",t1.array[2]*100 + array[1]*10 + array[0]*1);
        end
    end
endmodule
