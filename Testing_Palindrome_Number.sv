//Q) Write a constraint to check whether generated number between [10:100] is Palindrome Number (or) not?

class packet;
  randc int unsigned num;
  constraint c1{num inside {[1:100]};}

 function void post_randomize();
  int temp;
  int last_digit;
  int reverse_num;
  
  temp = num;
  $display("temp = %0d",temp);
  
  last_digit = temp%10;
 // $display("last_digit = %0d",last_digit);

  reverse_num = (last_digit*10) + (temp/10);
  $display("reverse_num = %0d",reverse_num); 
   
  if(temp == reverse_num)
    $display("It is a palindrome number %0d",temp);
  else
    $display("Not palindrome number %0d",temp);
   
endfunction 
  
endclass 

module test();
  packet p1;
  
  initial 
    begin
      p1 = new();
      repeat(100) 
        begin
          p1.randomize();
        end  
  end
endmodule
