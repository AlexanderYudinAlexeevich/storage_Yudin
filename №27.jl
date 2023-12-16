println("
    вызовите функцию с вектором 
ПРИМЕР:                       sumV([0, 0, 1, 4], 1, 0)")

function sumV(f,s,a)
    if s > length(f)
        return a
    else
        return sumV(f,s+1,a+f[s])
    end
end 


