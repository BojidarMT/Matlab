global picture;
picture = zeros(50, 50);
SimpleCircle(25, 25, 18, 30);
image(picture);
pause(1)
DrawBresenhamCircle(25, 25, 18, 67);
image(picture);
