using HorizonSideRobots
r=Robot(animate=true)
function Predel!(r,side)
    if isborder(r,side)==false
        move!(r,side)
        Predel!(r,side)
    end
end