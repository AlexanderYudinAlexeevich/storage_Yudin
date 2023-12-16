function fibonacci_recursive(n)
    if n < 1
        print("Значение n должно быть больше или равно ")
        return 1
    elseif n == 1
        return 0
    elseif n==2
        return 1
    else
        return fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2)
    end
end

