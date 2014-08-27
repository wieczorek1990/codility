require 'set'
def solution(x, a)
    set = Set.new
    for i in 1..x
        set << i
    end
    a.each_with_index do |i, idx|
        set.delete(i)
        if set.empty?
            return idx
        end
    end
    return -1
end
puts solution(5, [1, 3, 1, 4, 2, 3, 5, 4])
