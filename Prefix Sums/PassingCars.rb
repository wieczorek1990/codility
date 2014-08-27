def solution(a)
    zeros = 0
    cars = 0
    a.each do |i|
        if i == 0
            zeros += 1
        else
            cars += zeros
        end
    end
    if cars <= 1_000_000_000
        return cars
    else
        return -1
    end
end
puts solution([0, 1, 0, 1, 1, 1])
