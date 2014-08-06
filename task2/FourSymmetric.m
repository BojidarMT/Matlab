function FourSymmetric(xc, yc, x, y, val)
    global picture;
    picture(xc + x, yc + y) = val;
    picture(xc - x, yc - y) = val;
    picture(xc - x, yc + y) = val;
    picture(xc + x, yc - y) = val;
end