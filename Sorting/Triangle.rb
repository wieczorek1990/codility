def solution(a)
    a.sort!
    for i in 0..a.size-3
        p = i
        q = i + 1
        r = i + 2
        if a[p] + a[q] > a[r] and a[q] + a[r] > a[p] and a[r] + a[p] > a[q]
            return 1
        end
    end
    return 0
end
puts solution([1, 2, 3, 4, 5])
