function DrawBresenhamCircle(xc, yc, R, val)
    global picture;
    x = 0;
    y = R;
    d = 2 - 2*R;
    picture(xc, yc + R) = val;
    picture(xc, yc - R) = val;
    picture(xc + R, yc) = val;
    picture(xc - R, yc) = val;
    
    while true
        if d > -y
            y = y - 1;
            d = d + 1 - 2*y;
        end
        
        if d <= x
            x = x + 1;
            d = d + 1 + 2*x;
        end
        
        if y <= 0
            return;
        end
            
        FourSymmetric(xc, yc, x, y, val);
        image(picture);
        pause(0.05);
    end
end