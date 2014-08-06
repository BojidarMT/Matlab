function [i, tin, tout] = CalcT(R, Q, tin, tout)
    if R > 0
        t = Q / R;
        if t < tin
            i = false;
            return;
        end
        tout = min(t, tout);
    elseif R < 0
        t = Q / R;
        if t > tout
            i = false;
            return;
        end
        tin = max(t, tin);
    else
        if(Q < 0)
            i = false;
            return;
        end
    end
    i = true;
end
        