function SimpleCircle(xc, yc, R, val)
    global picture;
    x = 0;
    y = R;
    picture(xc, yc+R) = val;
    picture(xc, yc-R) = val;
    picture(xc+R, yc) = val;
    picture(xc-R, yc) = val;
    
    while x < y
        x = x + 1;
        y = round(sqrt(R*R - x*x));
        EightSymmetric(xc, yc, x, y, val);
        image(picture);
        pause(0.1);
    end
    
    if(x==y)
        FourSymmetric(xc, yc, x, y, val);
    end
    
end