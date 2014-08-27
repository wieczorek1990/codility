def solution(a)
    a.sort!
    last = a.size - 1
    x = a[last] * a[last - 1] * a[last - 2]
    y = a[0] * a[1] * a[last]
    x > y ? x : y
end
puts solution([-1, -2, 1, 1])
