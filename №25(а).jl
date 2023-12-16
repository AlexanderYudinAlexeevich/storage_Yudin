using HorizonSideRobots
r=Robot(animate=true)
n=0
function PredelShahA!(r,side)
    if isborder(r,side)==false
        putmarker!(r)
        move!(r,side)
        if isborder(r,side)==false
            move!(r,side)
            putmarker!(r)
        end
        PredelShahA!(r,side)
    end
end