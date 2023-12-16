using HorizonSideRobots
r=Robot(animate=true)

function DKross!(r)
    k=-1
    t=-1
    while (isborder(r,Sud)==false)
        move!(r,Sud)
        k+=1
    end
    while (isborder(r,West)==false)
        move!(r,West)
        t+=1
    end
    for _ in 0:k
        move!(r,Nord)
    end
    for _ in 0:t
        move!(r,Ost)
    end
    while (isborder(r,Nord)==false) & (isborder(r,Ost)==false)
        move!(r,Nord)
        if (isborder(r,Ost)==false)
            move!(r,Ost)
            putmarker!(r)
        end
    end
    
    while (ismarker(r)==true)
        if isborder(r,Sud)==false
            move!(r,Sud)
        end
        if isborder(r,West)==false
            move!(r,West)
        end
    end
    while (isborder(r,Sud)==false) & (isborder(r,Ost)==false)
        move!(r,Sud)
        if (isborder(r,Ost)==false)
            move!(r,Ost)
            putmarker!(r)
        end
    end
    while (ismarker(r)==true)
        if isborder(r,Nord)==false
            move!(r,Nord)
        end
        if isborder(r,West)==false
            move!(r,West)
        end
    end
    while (isborder(r,West)==false) & (isborder(r,Nord)==false)
        move!(r,Nord)
        
        if (isborder(r,West)==false)
            move!(r,West)
            putmarker!(r)
        end

    end
    while (ismarker(r)==true)
        if isborder(r,Sud)==false
            move!(r,Sud)
        end
        if isborder(r,Ost)==false
            move!(r,Ost)
        end
    end
    while (isborder(r,Sud)==false) & (isborder(r,West)==false)
        move!(r,Sud) 
        if (isborder(r,West)==false)
            move!(r,West)
            putmarker!(r)
        end
    end
    
    while (isborder(r,Sud)==false)
        move!(r,Sud)
    end
    while (isborder(r,West)==false)
        move!(r,West)
    end
    for _ in 0:k
        move!(r,Nord)
    end
    for _ in 0:t
        move!(r,Ost)
    end
    putmarker!(r)
    
    
end