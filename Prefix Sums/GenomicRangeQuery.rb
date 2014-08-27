def solution(s, p, q)
    result = []
    n = p.size
    for i in 0..n - 1
        sub = s.slice(p[i], q[i] - p[i] + 1)
        result << nums(sub).min
    end
    return result
end

def nums(a)
    result = []
    a.each_char do |i|
        case i
        when 'A'
            result << 1
        when 'C'
            result << 2
        when 'G'
            result << 3
        when 'T'
            result << 4
        end
    end
    return result
end
