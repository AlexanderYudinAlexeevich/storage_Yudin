using HorizonSideRobots
r=Robot("Find_marker.sit",animate=true)

function Spiral(r)
    spiral(()->ismarker(r),r)
end
function spiral(stop_condition::Function, robot; start_side = Nord, nextside::Function = right)
    side = start_side
    n = 0
    k=n
    while stop_condition() == false
        n+=1
        for _ in 0:k
            move!(()->stop_condition(), robot, side; num_maxsteps = n)
        end
        side = nextside(side)
        
        for _ in 0:k
            move!(()->stop_condition(), robot, side; num_maxsteps = n)
        end
            
        side = nextside(side)
    end
end
