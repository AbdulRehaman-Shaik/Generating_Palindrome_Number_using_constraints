//Q) Write a constraint to generate palindrome number between [0:1000]?

class packet;
  randc int unsigned num[];
  rand int a;
  constraint c1{num.size == 110;
    		foreach(num[i])
  		{
                  num[i] inside {[0:1000]};
		}}
                  
  constraint c2{a == display();}

  function int display();
      int b;
                foreach(num[i])
                begin
                  
                  if(i>0 && i<10)
                    begin
                      num[i] = 11*i;
                     $display("num[%0d] = %0d",i,num[i]);
                    end
                  
                  else if(i>=10 && i<20)
                    begin
                      num[i] = 10*i+1;
                      $display("num[%0d] = %0d",i,num[i]);
                    end
                  
                  else if(i>=20 && i<30)
                    begin
                      num[i] = 10*i+2;
                      $display("num[%0d] = %0d",i,num[i]);
                    end
                  
                  else if(i>=30 && i<40)
                    begin
                      num[i] = 10*i+3;
                      $display("num[%0d] = %0d",i,num[i]);
                    end
                  
                  else if(i>=40 && i<50)
                    begin
                      num[i] = 10*i+4;
                      $display("num[%0d] = %0d",i,num[i]);
                    end
                  
                  else if(i>=50 && i<60)
                    begin
                      num[i] = 10*i+5;
                      $display("num[%0d] = %0d",i,num[i]);
                    end
                  
                  else if(i>=60 && i<70)
                    begin
                      num[i] = 10*i+6;
                      $display("num[%0d] = %0d",i,num[i]);
                    end
                  
                  else if(i>=70 && i<80)
                    begin
                      num[i] = 10*i+7;
                      $display("num[%0d] = %0d",i,num[i]);
                    end
                  
                  else if(i>=80 && i<90)
                    begin
                      num[i] = 10*i+8;
                      $display("num[%0d] = %0d",i,num[i]);
                    end
                  
                  else if(i>=90 && i<100)
                    begin
                      num[i] = 10*i+9;
                      $display("num[%0d] = %0d",i,num[i]);
                    end
                  
                  else if(i>=100 && i<110)
                    begin
                      b = i%10;
                      num[i] = b;
                      $display("num[%0d] = %0d",i,num[i]);
                    end
                end
                
             endfunction
  endclass 

module test();
  packet p1;
  
  initial
    begin
     p1 = new();
     p1.randomize();
    end
  
endmodule
