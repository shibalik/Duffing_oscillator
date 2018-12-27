%euler plot
%y'=y

x=0:.01:10;
y=zeros(1,1000);
h=.01;
y(1)=1/2.727;
for i=1:1000;
    y(i+1)=y(i)+.01*cos(x(i));
end

plot(x,y);