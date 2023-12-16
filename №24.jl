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
function PredelANDPOLnaz!(r,side)
    n=0
    
    function Predel_AND!(r,side)
    
        if isborder(r,side)==false
            move!(r,side)
            n+=1
            if isborder(r,side)==false
                Predel_AND!(r,side)
            end
            
        end
        
    end
    Predel_AND!(r,side)
    if isborder(r,side)==true
        for _ in 0:((n)//2)
            d=inverse(side)
            move!(r,d)
        end
    end
end