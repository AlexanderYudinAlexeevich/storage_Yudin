function fibonacci_recursive_mem(k)
    memo = Dict{Int,Int}()
    function fibonacci_h(k)
        if haskey(memo, k)
            return memo[k]
        end
        if k==1
            return 0
        elseif k<=3 & k>1
            return 1
        
        else
            return fibonacci_h(k - 1) + fibonacci_h(k - 2)
        end
        memo[k] = result
        return result
    end
    return fibonacci_h(k)
end