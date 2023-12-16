using HorizonSideRobots
r=Robot("Horizon.sit" ,animate=true)
function Horizon(r)
    c=1
    x=Nothing
    while isborder(r,Nord)==true
        c+=1
        if c%2==0
            for x in 0:c
            move!(r,Ost)
            end
        else
            for x in 0:c
                move!(r,West)
                end
        end

    end
end