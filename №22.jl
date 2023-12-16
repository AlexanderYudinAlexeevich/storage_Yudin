
using HorizonSideRobots
r=Robot("InvPEREG.sit",animate=true)

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
function PredelAND2naz!(r,side)
    n=0
    
    function Predel2AND!(r,side)
    
        if isborder(r,side)==false
            move!(r,side)
            n+=1
            if isborder(r,side)==false
                Predel2AND!(r,side)
            end
            
        end
        
    end
    Predel2AND!(r,side)
    if n==0
        d=inverse(side)
        function Predel2KON!(r,d)
    
            if isborder(r,d)==false
                move!(r,d)
                if isborder(r,d)==false
                    Predel2KON!(r,d)
                end
                
            end
            
        end
        Predel2KON!(r,d)

    else isborder(r,side)==true
        for _ in 0:(2*n-1)
            d=inverse(side)
            move!(r,d)
        end
    end
end