using HorizonSideRobots
r=Robot(animate=true)
function Shah1!(r)
    x=Nothing
    y=Nothing
    i=0
    k=0
    D=2
    while isborder(r,West)==false
        i+=1
        move!(r,West)
    end
    while isborder(r, Sud)==false
        k+=1
        move!(r,Sud)
    end
    for x in 1:i

        move!(r,Ost)
    end
    for y in 1:k
        move!(r,Nord)
    end
    putmarker!(r)
    while isborder(r,Nord)==false
        D+=1
        move!(r,Nord)
        if D%2==0
            putmarker!(r)
        end

    end

    while isborder(r,Ost)==false
        D+=1
        move!(r,Ost)
        if D%2==0
            putmarker!(r)
        end
    end
    while isborder(r,West)==false
        D+=1
        move!(r,West)
        if D%2==0
            putmarker!(r)
        end
    end
    move!(r, Sud)
    while isborder(r,Sud)==false
        D+=1
        while isborder(r,Ost)==false
            D+=1
            move!(r,Ost)
            if D%2==0
                putmarker!(r)
            end
        end

        move!(r, Sud)
        D+=1
        while isborder(r,West)==false
            D+=1
            move!(r,West)
            if D%2==0
                putmarker!(r)
            end
        end
        if isborder(r,Sud)==false
            move!(r, Sud)
        end
    end
    while isborder(r,Nord)==false
        D+=1
        move!(r,Nord)
        if D%2==0
            putmarker!(r)
        end
    end
    while isborder(r,Ost)==false
        D+=1
        move!(r,Ost)
    end
    while isborder(r,Sud)==false
        D+=1
        move!(r,Sud)
        if D%2==0
            putmarker!(r)
        end
    end
    while isborder(r,West)==false
        move!(r,West)
    end
    for  x in 1:i
        move!(r, Ost)
    end
    for  y in 1:k
        move!(r, Nord)
    end
    
end