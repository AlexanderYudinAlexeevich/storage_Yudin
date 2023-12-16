using HorizonSideRobots
r=Robot(animate=true)

function inverse(side::HorizonSide)::HorizonSide
    if side == Nord
        return Sud
    elseif side == Sud
        return Nord
    elseif side == Ost
        return West
    else
        return Ost   
    end
end
function PredelANDnaz!(r,side)
    n=0
    
    function PredelAND!(r,side)
    
        if isborder(r,side)==false
            move!(r,side)
            n+=1
            if isborder(r,side)==false
                PredelAND!(r,side)
            end
            
        end
        
    end
    PredelAND!(r,side)
    if isborder(r,side)==true
        for _ in 0:n-1
            d=inverse(side)
            move!(r,d)
        end
    end
end