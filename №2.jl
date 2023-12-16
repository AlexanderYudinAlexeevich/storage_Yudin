using HorizonSideRobots
r=Robot(animate=true)
function Square!(r)
    x=nothing
    i=-1
    side=Ost
    while isborder(r,side)==false
        i=i+1
        move!(r,side)
    end
    side=Nord
    while isborder(r,side)==false
        move!(r,side)
        putmarker!(r)
    end
    side=West
    while isborder(r,side)==false
        move!(r,side)
        putmarker!(r)
    end
    side=Sud
    while isborder(r,side)==false
        move!(r,side)
        putmarker!(r)
    end
    side=Ost
    while isborder(r,side)==false
        move!(r,side)
        putmarker!(r)
    end
    side=Nord
    move!(r,side)
    while ismarker(r)==false
        putmarker!(r)
        move!(r,side)
    end
    side=Sud
    move!(r,side)

    side=West
    for x in 0:i
        move!(r, side)
    end
    
end