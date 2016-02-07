%University of Malta -Introduction to Computational Physics
%Bisekcja w pêtli while dla równania e^-x +4x^3 -5 (wiem, ¿e wynik to coœ ko³o
%x=1)

%Dane wejœciowe
a=0.5; %skoro ko³o x=1 to wybieram przedzia³ 0.5-1.5
b=1.5;
maxIter=25; %maksymalna iloœc iteracji
c_new=zeros(24,1) %to bêdzie do pokazywania iteracji, wektor kolumnowy

%Definicja zmiennych programu
c_new(1)=(a+b)/2; %zgodnie z regu³¹ bisekcji

n=1; % zlicza iteracje
f_c=exp(-c_new(n))+4*c_new(n).^3-5;%obliczam f(c) by unikn¹æ iteracji gdy ju¿ znajdziemy pierwiastek


%Iteracyjna formu³a bisekcji
while f_c~=0  &&   n<maxIter
	f_a=exp(-a)+4*a^3-5;
	if f_a*f_c<0
		b=c_new(n);
		else
			a=c_new(n);
    end
    	    n=n+1;
	
			c_new(n)=(a+b)/2;
		f_c=exp(-c_new(n))+4*c_new(n).^3-5;
	
    end
			format long
			disp(c_new);
            
%             plot(c_new,'ko:');
 %Rysowanie wykresu
x=0.8:0.01:1.2;
y1=zeros(1,length(x));
y1(:)=0; %to nam poka¿e dok³adny pierwiastek
y2=exp(-x)+4*x.^3-5;
plot(x,y1)

hold on
plot(x,y1)

hold on
plot(x,y2,'r')

hold on
plot(c_new(1),y1,'k*:'); %pokazuje wartoœæ dla 1 iteracji
hold on
plot(c_new(2),y1,'k*:'); %pokazuje wartoœæ dla 2 iteracji
hold on
plot(c_new(10),y1,'k*:'); %dziesi¹tej 
hold on
plot(c_new(25),y1,'k*:');  %25

legend('y=0', 'y=exp(-x)+4x^3-5', 'iteracje')
