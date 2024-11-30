//Q) Write a constraint to generate Palindrome Number between [0:1000]

class transaction;
  rand int num;
  rand int a;
  
  constraint c1{num inside {[0 : 1000]};}
  constraint c2{ a == palindrome_num(num);}
  
  function int palindrome_num(int b);
    int temp;
    int rem;
    int sum = 0;  
    temp = b;
    $display("temp = %0d",temp);
    
    while(b>0)
      begin
        rem = b%10;
        sum = (sum*10) + rem;
        b = b/10;
      end
    $display("sum = %0d",sum);
    return sum;
  endfunction
  
  function void post_randomize();
    if(a == num)
      $display("It is a Palindrome number %0d",num);
    else
      $display("Not a Palindrome number %0d",num);
  endfunction
endclass
  
  module test;
    transaction t1;
    initial begin
      repeat(100)
        begin
    		t1 = new();
          t1.randomize();
        end
    end
  endmodule    
