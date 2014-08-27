def solution(a)
    list = Array.new(a.size, false)
    a.each do |i|
        list[i - 1] = true
    end
    list.each do |i|
        if i == false
            return 0
        end
    end
    return 1
end
puts solution([1, 2, 3])
