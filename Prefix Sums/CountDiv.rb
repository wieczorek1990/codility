def solution(a, b, k)
    r = 0
    for i in a..b
        if i % k == 0
            r += 1
        end
    end
    return r
end
puts solution(4, 7, 2)
