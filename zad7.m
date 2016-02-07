
%Rozne interpolacje
x=1:20;
y=sin(x)+cos(2*x);
xi=1:0.2:20;
yi=interp1(x,y,xi,'linear');
figure(1)
plot(x,y,'or',xi,yi,'-',xi,sin(xi)+cos(2*xi))

hold on
x=1:20;
y=sin(x)+cos(2*x);
xi=1:0.2:20;
y2=interp1(x,y,xi,'spline');
figure(2)
plot(x,y,'or',xi,y2,'-',xi,sin(xi)+cos(2*xi))
hold on

x=1:20;
y=sin(x)+cos(2*x);
xi=1:0.2:20;
y3=interp1(x,y,xi,'cubic');
figure(3)
plot(x,y,'or',xi,y3,'-',xi,sin(xi)+cos(2*xi))
