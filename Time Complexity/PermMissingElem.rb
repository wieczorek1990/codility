def solution(a)
  b = Array.new(a.size + 1, false)
  a.each do |i|
    b[i - 1] = true
  end
  b.each_with_index do |i, idx|
    if i == false
      return idx + 1
    end
  end
end
puts solution([2, 3, 1, 5])
