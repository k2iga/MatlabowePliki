%Find function

%wektor 
x=0:1:100;
%indices-wskaŸniki
inds= find(x>40 & x<60);
disp(inds);

%Aim is to find how many values/entries of x are positive?

x=sin(linspace(0,10*pi,100));
%zliczam
count=0;

for n=1:length(x)
    if x(n) >0
        count=count+1;
    end
end

count=length(find(x>0));
%     disp(x(42));
%       disp(x(60));
      
      %To sum up every two consecutive (kolejny, seryjny) terms: 
%       a=rand(1,100);
%       b=[0 a(1:end-1)]+a;
    %alternative, longer version - slow and complicated
    a=rand(1,100);
    b=zeros(1,100);
    for n=1:100
        if n==1
            b(n)=a(n);
        else     
            %sumuje dwa ostatnie
            b(n)=a(n-1)+ a(n); 
        end
    end
   a(1)
   b(1)
   a(2)
   b(2)
   a(3)
   b(3)