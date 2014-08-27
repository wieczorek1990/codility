def solution(x, y, d)
  return (y - x).fdiv(d).ceil
end
puts solution(10, 85, 30)
