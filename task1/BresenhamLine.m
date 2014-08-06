function BresenhamLine(X1, Y1, X2, Y2, value)
M = zeros(41, 41);
dx=abs(X2-X1);
dy=abs(Y2-Y1);
if (dx<dy)
    XY=X1;
    XY=X2;
    XY=dx;
    XY=Y1;
    XY=Y2;
    XY=dy;
     
end
incUP = -2*dx+2*dy;
incDN = 2*dy;
if X1<=X2
    incX=1;
else
    incX=-1;
end
if Y1<=Y2
    incY=1;
else
    incY=-1;
end
d=-dx+2*dy;
x=X1;
y=Y1;
n=dx+1;
for n = 0:dx
       if (dx<dy)
            M(y,x)=value;
        else
            M(x,y)=value;
        end
 x=x+incX;
       if d>0
        d=d+incUP;
        y=y+incY;
         else
        d=d+incDN;
       end
    n=n-1;  
    image(M);
    pause(0.1);
end
end

