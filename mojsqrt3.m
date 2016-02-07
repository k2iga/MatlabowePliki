%Funkcja ze wzorem Newton- Raphson w petli while

function xk=mojsqrt3(s,a)


%definiuje zmienne programu

% xi=a;
% fxi=xi^2-s;

xk=a;
fxk=xk^(3)-s;

n=0; %iteracje

%FORMU£A ITERACYJNA PIERWIASTEK

% while fxi~=0 &&  n<25
% 	
% 	fxi=xi^2-s;
% 	xi=xi-(( fxi)/(2*xi));
% 	n=n+1;
% end
%DRUGA FORMU£A ITERACYJNA PIER3
while fxk~=0 &&  n<25
	
	fxk=xk^3-s;
    fPxk=3*(xk)^(2);
	xk=xk-(fxk/fPxk);
	n=n+1;
end
	
format long
disp(xk);
%xi;