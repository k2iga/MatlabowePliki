%University of Malta -Introduction to Computational Physics
%1. Write a program that used the bisection method to determine the root of
% f(x) = x2 - 40. Make sure your answer is accurate to five significant figures
a=6;
b=7;
 c=(a+b)/2;
co=c*10 +1;
f_c=c^2-40;


for n=1:100
 c=(a+b)/2;
 f_a=a^2-40;
  
 if   f_a*f_c< 0
  b=c;
  
   else
   a=c;
  
   end;
    c=(a+b)/2;
   co=c;
   f_c=c^2-40;
   end;
   
   format long
   c;