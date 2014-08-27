def solution(a)
    min = (a[0] + a[1]).fdiv(2)
    idx = 0
    for i in 0..a.size-2
        tmp = (a[i] + a[i + 1]).fdiv(2)
        if tmp < min
            min = tmp
            idx = i
        end
    end
    for i in 0..a.size-3
        tmp = (a[i] + a[i + 1] + a[i + 2]).fdiv(3)
        if tmp < min
            min = tmp
            idx = i
        end
    end
    return idx
end
puts solution([1, 2, 3, 4, 5])
