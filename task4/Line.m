function Line(X1, Y1, X2, Y2, color)
global M;
dx=abs(X2-X1);
dy=abs(Y2-Y1);
reverse = (dx<dy);
if reverse
    t=X1; X1=Y1; Y1=t;
    t=X2; X2=Y2; Y2=t;
    t=dx; dx=dy; dy=t;
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
x=X1; y=Y1; 
for n = 0:dx
    
    if reverse
        M(y,x)=color;
    else
        M(x,y)=color;
    end
    
    x=x+incX;
    if d>0
        d=d+incUP;
        y=y+incY;
    else
        d=d+incDN;
    end
    image(M);
   pause(0.04);
end
end



