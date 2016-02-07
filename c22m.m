%
% Skrypt rozwiazuje zagadnienie poczatkowe:
%     du/dt = c^2 (d^2 u/d x^2)
% u(t=0,x) = f(x), f(x) nadaje profil paraboliczny,
% u(t,x=l) = 0   , x=l to lewy brzeg obszaru obliczeniowego (preta)
% u(t,x=p) = 0   , x=p to prawy brzeg
%
% Pomysl oraz wizualizacja zaczerpniete z MIT.
%% 
L=1; T=0.333; alpha=1;
N=5; dx=L/N;
M=10; dt=T/M;
x=[0:dx:L]';
t=[0:dt:T];
C=alpha^2*dt/dx^2				% liczba CFL
%
n=length(x);
m=length(t);
u=zeros(n,m);
u(2:n-1,1)=4*x(2:n-1)-4*x(2:n-1).^2;	% warunek poczatkowy
u(1,1:m)=0;				% warunek brzegowy x=1
u(n,1:m)=0;				% warunek brzegowy x=L=N*dx
%
for j=1:m-1 %czasowe
for i=2:n-1
 u(i,j+1)=(1-2*C)*u(i,j) + C*(u(i+1,j)+u(i-1,j));
end
end

%c=0.5
L=1; T2=0.2; alpha=1;
N=5; dx2=L/N;
M=10; dt2=T2/M;
x2=[0:dx2:L]';
t2=[0:dt2:T2];
C2=alpha^2*dt2/dx2^2				% liczba CFL
%
n=length(x2);
m=length(t2);
u2=zeros(n,m);
u2(2:n-1,1)=4*x2(2:n-1)-4*x2(2:n-1).^2;	% warunek poczatkowy
u2(1,1:m)=0;				% warunek brzegowy x=1
u2(n,1:m)=0;				% warunek brzegowy x=L=N*dx
%
for j=1:0
for i=2:n-1
 u2(i,j+1)=(1-2*C2)*u2(i,j) + C2*(u2(i+1,j)+u2(i-1,j));
end
end

%C=0,25
% L=1; T3=0.1; alpha=1;
% N=5; dx3=L/N;
% M=10; dt2=T3/M;
% x3=[0:dx3:L]';
% t3=[0:dt3:T3];
% C3=alpha^2*dt3/dx3^2				% liczba CFL
% %
% n=length(x3);
% m=length(t3);
% u3=zeros(n,m);
% u3(2:n-1,1)=4*x3(2:n-1)-4*x3(2:n-1).^2;	% warunek poczatkowy
% u3(1,1:m)=0;				% warunek brzegowy x=1
% u3(n,1:m)=0;				% warunek brzegowy x=L=N*dx
% %
% for j=1:m-1
% for i=2:n-1
%  u3(i,j+1)=(1-2*C3)*u3(i,j) + C2*(u3(i+1,j)+u3(i-1,j));
% end
% end

% t=0.1;
% t2=0.1;
hold on
plot(x,u);
plot(x2,u2,'LineWidth',3);
hold off
ylabel('u');
xlabel('x');
legend([' - C1 =' num2str(C),' C2 - grube =' num2str(C2)]);
