using HorizonSideRobots
r=Robot("Find_marker.sit",animate=true)
i=1 
side=Nord
function Find_marker!(r,side,i)
    x=Nothing
    while ismarker(r)==false
        for x in 1:2
            for x in 1:i
        if ismarker(r)
            return nothing
        end
        move!(r,side)
    end
            side=HorizonSide(mod(Int(side)+1,4))
        end
        i+=1
    end
    
    
    
end
