using HorizonSideRobots
r=Robot(animate=true)

function kol_gor2(r)
    x=Nothing
    y=Nothing
    i=0
    k=0
    D=0
    f=0
    while isborder(r,West)==false
        k+=1
        move!(r,West)
    end
    while isborder(r,Sud)==false
        i+=1
        move!(r,Sud)  
    end
    while (isborder(r,Ost)==false | isborder(r,Nord)==false) | (isborder(r,West)==false | isborder(r,Nord)==false)
        
    
        while isborder(r,Ost)==false
            if isborder(r,Ost)==false
                move!(r,Ost)
                f+=1
            end
            if isborder(r,Nord)==true
                D+=1
                if f==1
                    D-=1
                end
                f=0
                while isborder(r,Nord)==true
                    if isborder(r,Ost)==false
                        move!(r,Ost)
                    end
                end
                
            end
        end
        if isborder(r,Nord)==false
            move!(r,Nord)
        end
        while isborder(r,West)==false
            if isborder(r,West)==false    
                move!(r,West)
                f+=1
            end
            
            if isborder(r,Nord)==true
                D+=1
                if f==1
                    D-=f
                end
                f=0
                while isborder(r,Nord)==true
                    if isborder(r,West)==false
                        move!(r,West)
                        
                    end
                end

            end
        end
        if isborder(r,Nord)==false
            move!(r,Nord)
        end
    end
    while isborder(r,West)==false
        move!(r,West)
    end
    while isborder(r,Sud)==false
        move!(r,Sud)  
    end
    
    for  y in 1:i
        move!(r, Nord)
    end
    for  x in 1:k
        move!(r, Ost)
    end
    
    print("Количество горизонтальных перегородок: ",D)
end