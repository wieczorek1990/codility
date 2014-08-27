def solution(n, a)
    c = Array.new(n, 0)
    a.each do |i|
        if i != n + 1
            c[i - 1] += 1
        else
            c = Array.new(n, c.max)
        end
    end
    return c
end
puts solution(5, [3, 4, 4, 6, 1, 4, 4])
