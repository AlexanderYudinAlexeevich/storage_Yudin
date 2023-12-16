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
function Sim(r,side)
    n=0
    
    function PredelSim(r,side)
    
        if isborder(r,side)==false
            move!(r,side)
            n+=1
            if isborder(r,side)==false
                PredelSim(r,side)
            end
            
        end
        
    end
    PredelSim(r,side)
    if isborder(r,side)==true
        d=inverse(side)
        function PredelObSim(r,d)
    
            if isborder(r,d)==false
                move!(r,d)
                if isborder(r,d)==false
                    PredelObSim(r,d)
                end
                
            end  
        end
        PredelObSim(r,d)
        for _ in 0:(n-1)
            
            move!(r,side)
        end
    end
end