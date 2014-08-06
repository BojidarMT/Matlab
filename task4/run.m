pointA = [1 1];
pointB = [50 40];

pravougulnikdolnatochka = [10 5];
pravougulnikgornatochka = [45 40];

[e, x1, y1, x2, y2] = LiangBarsky2DClip(pointA(1), pointA(2), pointB(1), pointB(2), ...
    pravougulnikdolnatochka(1), pravougulnikgornatochka(1), pravougulnikdolnatochka(2), pravougulnikgornatochka(2));
global M;
M = zeros(50, 50);
Line(pravougulnikdolnatochka(1), pravougulnikdolnatochka(2), pravougulnikgornatochka(1), pravougulnikdolnatochka(2), 30);

Line(pravougulnikdolnatochka(1), pravougulnikdolnatochka(2), pravougulnikdolnatochka(1), pravougulnikgornatochka(2), 30);
Line(pravougulnikgornatochka(1), pravougulnikdolnatochka(2), pravougulnikgornatochka(1), pravougulnikgornatochka(2), 30);
Line(pravougulnikdolnatochka(1), pravougulnikgornatochka(2), pravougulnikgornatochka(1), pravougulnikgornatochka(2), 30);
Line(pointA(1), pointA(2), pointB(1), pointB(2), 20);
if e
    
    Line(x1, y1, x2, y2, 60);
end

image(M);
