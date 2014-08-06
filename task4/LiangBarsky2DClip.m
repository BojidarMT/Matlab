function [j, xmin, xmax, ymin, ymax] = LiangBarsky2DClip(x1, y1, x2, y2, X1, Y1, X2, Y2)
    dx = x2 - x1;
    dy = y2 - y1;
    tin = 0;
    tout = 1;
    
    [i, tin, tout] = CalcT(dx, Y1 - x1, tin, tout);
    if i
        [i, tin, tout] = CalcT(-dx, x1 - X1, tin, tout);
        if i
            [i, tin, tout] = CalcT(dy, Y2 - y1, tin, tout);
            if i
                [i, tin, tout] = CalcT(-dy, y1 - X2, tin, tout);
                if i
                    if tin > 0
                        xmin = round(x1 + tin * dx);
                        xmax = round(y1 + tin * dy);
                    else
                        xmin = x1;
                        xmax = y1;
                    end
                    
                    if tout < 1
                        ymin = round(x1 + tout*dx);
                        ymax = round(y1 + tout*dy);
                    else
                        ymin = x2;
                        ymax = y2;
                    end
                    j = 1;
                    return;
                end
            end
        end
    end
    
    xmin = 0;
    xmax = 0;
    ymin = 0;
    ymax = 0;
    j = 0;
end
    