using HorizonSideRobots
r=Robot("Horizon.sit" ,animate=true)
include("librobot.jl")
function shutt(r)
    shuttle!(()-> isborder(r, Nord), r, Ost)
end
function inverse(side::HorizonSide)::HorizonSide
    if side == Nord
        return Sud
    elseif side == Sud
        return Nord
    elseif side == Ost
        return West
    else
        return Ost   
    end
end
function al(robot, side, n)::Nothing
    for _ in 0:n
        move!(robot, side)
    end
end
function shuttle!(stop_condition::Function, robot, side)
    n=0
    while stop_condition() == true
    n += 1
    al(robot, side, n)
    side = inverse(side)
    end
end
    