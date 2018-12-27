Z=zeros(1,250);
j=1;
for i=0:.1:1.5 
syms w y(t);
eq = diff(y,2)+w*y+.1*diff(y)+1*y^3 == i*cos(t);
%V=odeToVectorField(eq);
W=zeros(1,250);



%for i = 1:250
V=subs(V,w,1);
M  =  matlabFunction(V,'Vars',{'t','Y'});
tspan = [0 38];
y0 = [0.1 0];
sol = ode45(M,tspan,y0);

tVal = linspace(0,38);
yVal = deval(sol,tVal,1);
%plot(tVal,yVal)
indexmax = find(max(yVal) == yVal);
%xmax = x(indexmax);a
ymax = yVal(indexmax);
Z(j)=ymax;
++j;

disp(Z(j))
end

plot(i,Z)
xlabel('t')
ylabel('y(t)')
title('ODE Solution')