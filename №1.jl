using HorizonSideRobots
r=Robot(animate=true)
function Kross!(r)
    side=Ost
    while isborder(r,side)==false
        move!(r,side)
        putmarker!(r)
    end
    side=West
    while ismarker(r)==true
        move!(r,side)

    end
    side=Nord
    while isborder(r,side)==false
        move!(r,side)
        putmarker!(r)
    end
    side=Sud
    while ismarker(r)==true
        move!(r,side)

    end
    while isborder(r,side)==false
        move!(r,side)
        putmarker!(r)
    end
    side=Nord
    while ismarker(r)==true
        move!(r,side)

    end
    side=West
    while isborder(r,side)==false
        move!(r,side)
        putmarker!(r)
    end
    side=Ost
    while ismarker(r)==true
        move!(r,side)
    end
    putmarker!(r)
end