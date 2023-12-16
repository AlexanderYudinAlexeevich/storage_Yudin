using HorizonSideRobots
r=Robot(animate=true)
n=0
function PredelShahB!(r,side)
    if isborder(r,side)==false
        move!(r,side)
        putmarker!(r)

        if isborder(r,side)==false
            move!(r,side)
        end
        PredelShahB!(r,side)
    end
end