global I hi

I = imread('circles.png'); 

hi = imshow(I,'InitialMagnification',300);
hold on;
tol = 2; 
[o,p] = ginput(1);
r = [o(1);p(1)];


SimpleFloodFill_4(r,tol); 

