def solution(h)
    result = 0
    stack = []
    h.each do |height|
        s = stack.size - 1
        if s == -1
            result += 1
        else
            loop do
                e = stack[s]
                if e.nil? or e < height
                    result += 1
                    break
                elsif e == height
                    break
                end
                s -= 1
            end
        end
        stack.push height
    end
    return result
end
puts solution([2,4,4,2,3,4,5])
