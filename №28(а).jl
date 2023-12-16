function fibonachi(n)
    if n < 1
        print("Значение n должно быть больше или равно ")
        return 1
    elseif n == 1
        return 0
    elseif n == 2
        return 1
    end
    
    fib1, fib2 = 0, 1
    for _ in 3:n
        fib1, fib2 = fib2, fib1 + fib2
    end
    return fib2
end
