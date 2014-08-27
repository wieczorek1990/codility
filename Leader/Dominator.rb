def solution(a)
    n = a.size
    leader = nil
    a.sort
    candidate = a[n / 2]
    count = 0
    n.times do |i|
        if a[i] == candidate
            count += 1
        end
    end
    if count > n / 2
        leader = candidate
    end
    if leader.nil?
        return -1
    else
        return a.index leader
    end
end
puts solution([1,1,1,1,2,3,4])
