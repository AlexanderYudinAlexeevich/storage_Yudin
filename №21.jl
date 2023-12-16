using HorizonSideRobots
r=Robot("BlizPereg.sit", animate=true)
function izm(side::HorizonSide)::HorizonSide
    if side == Nord
        return Ost
    elseif side == Sud
        return Ost
    elseif side == Ost
        return Sud
    else
        return Sud   
    end
end
    


function Pereg!(r,side)
    n=-1
    function Obh!(r,side)
        if isborder(r,side)==true
            d=izm(side)
                move!(r,d)
                n+=1

            if isborder(r,side)==true
                Obh!(r,side)
            end
            
        end
        
    end
    Obh!(r,side)
    if isborder(r,side)==false
        move!(r,side)
    end
    
    for _ in 0:n
        if side == Nord
            move!(r,West)
        elseif side == Sud
            move!(r,West)
        elseif side == Ost
            move!(r,Nord)
        else
            move!(r,Nord) 
        end
    end
end
