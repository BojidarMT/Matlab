function ms = SimpleFloodFill_4(r,tol)
global hi I

clear F;
fc = 1;

R = int32(I(:,:,1));
G = int32(I(:,:,2));
B = int32(I(:,:,3));

[szy szx] = size(R); 


stm = 10;
k = zeros(stm,2,'int32');
k(1,1) = r(1);
k(1,2) = r(2); 
stL = 1; 

hp = plot(r(1),r(2),'.r');
set(hp,'MarkerSize',16);

set(hp,'XData',k(1:stL,1),'YData',k(1:stL,2));
drawnow;



ms0m = 1e6; 
ms0 = zeros(ms0m,1,'int32'); 
ms0L = 0; 


Red = R(1,1);
Green = G(30,20);
Blue = B(40,20);


gh = @(xx,yy) yy+szy*(xx-1);


while true;
   
    xt = k(stL,1);
    yt = k(stL,2);
    stL = stL-1;
    
   
    sku = false; 
    skd = false; 
    sku1 = false; 
    skd1 = false; 
    for xtt = xt:szx
        drawnow;
        F(fc) = getframe(gcf);
        fc = fc+1;
        
        if max(abs([(R(yt,xtt)-Red), (G(yt,xtt)-Green), (B(yt,xtt)-Blue)])) <= tol
            
            ms0L = ms0L+1;
            ms0(ms0L) = gh(xtt,yt);
            I(yt,xtt,1) = 0;
            set(hi,'Cdata',I);
        else
            break;
        end
        
        
        if yt ~= szy
            if max(abs([(R(yt+1,xtt)-Red), (G(yt+1,xtt)-Green), (B(yt+1,xtt)-Blue)])) <= tol
                if ~sku
                    if all(gh(xtt,yt+1) ~= ms0(1:ms0L)) 
                        
                        stL = stL+1;
                        k(stL,1) = xtt;
                        k(stL,2) = yt+1;
                        sku = true;
                    end
                end
            else
                sku = false;
            end
            if xtt == xt
                sku1 = sku; 
            end
        end
        
       
        if yt ~= 1
            if max(abs([(R(yt-1,xtt)-Red), (G(yt-1,xtt)-Green), (B(yt-1,xtt)-Blue)])) <= tol
                if ~skd
                    if all(gh(xtt,yt-1) ~= ms0(1:ms0L)) 
                        
                        stL = stL+1;
                        k(stL,1) = xtt;
                        k(stL,2) = yt-1;
                        skd = true;
                    end
                end
            else
                skd = false;
            end
            if xtt == xt
                skd1 = skd; 
            end
        end
    end
    
    
    sku = sku1;
    skd = skd1;
    if xt ~= 1
        for xtt = (xt-1):-1:1 
            drawnow;
            F(fc) = getframe(gcf);
            fc = fc + 1;

            if max(abs([(R(yt,xtt)-Red), (G(yt,xtt)-Green), (B(yt,xtt)-Blue)])) <= tol
               
                ms0L = ms0L + 1;
                ms0(ms0L) = gh(xtt,yt);
                I(yt,xtt,1) = 0;
                set(hi,'Cdata',I);
            else
                break;
            end

           
            if yt ~= szy
                if max(abs([(R(yt + 1,xtt) - Red), (G(yt + 1,xtt) - Green), (B(yt + 1,xtt) - Blue)])) <= tol
                    if ~sku
                        if all(gh(xtt,yt + 1) ~= ms0(1:ms0L)) 
                            
                            stL = stL + 1;
                            k(stL,1 ) = xtt;
                            k(stL,2) = yt + 1;
                            sku = true;
                        end
                    end
                else
                    sku = false;
                end
            end

            
            if yt ~= 1
                if max(abs([(R(yt - 1,xtt) - Red), (G(yt - 1,xtt) - Green), (B(yt - 1,xtt) - Blue)])) <= tol
                    if ~skd
                        if all(gh(xtt,yt-1) ~= ms0(1:ms0L)) 
                          
                            stL = stL + 1;
                            k(stL,1) = xtt;
                            k(stL,2) = yt - 1;
                            skd = true;
                        end
                    end
                else
                    skd = false;
                end
            end
        end
    end
    
    set(hp,'XData',k(1:stL,1),'YData',k(1:stL,2));
    drawnow;
    
    
    if stL == 0 
        break; 
    end
    
    
end

ms = ms0(1:ms0L);






    


