using HorizonSideRobots
r=Robot(animate=true)
function all!(r)
    y=Nothing
    z=Nothing
    i=-1
    k=-1
    side=West
    while isborder(r,side)==false
        i=i+1
        move!(r,side)
    end
    side=Nord
    while isborder(r,side)==false
        k=k+1
        move!(r,side)
    end
    putmarker!(r)
    while isborder(r,Sud)==false
        side=Sud
        while isborder(r,side)==false
            move!(r,side)
            putmarker!(r)
        end
        if isborder(r,Ost)==false
            move!(r,Ost)
        end
        putmarker!(r)
        side=Nord
        while isborder(r,side)==false
            move!(r,side)
            putmarker!(r)
        end
        if (isborder(r, Ost)==true) & (isborder(r, Ost)==true)
            break
        end
        if isborder(r, Ost)==false
            move!(r,Ost)
            putmarker!(r)
        end
        
    end
    side=West
    while isborder(r,side)==false
        move!(r,side)
    end
    side=Nord
    while isborder(r,side)==false
        move!(r,side)
    end
    side=Ost
    for y in 0:i
        move!(r,side)
    end
    side=Sud
    for z in 0:k
        move!(r,side)
    end
end