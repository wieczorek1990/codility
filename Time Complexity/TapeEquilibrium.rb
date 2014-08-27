def solution(a)
  list = []
  first = a[0]
  second = 0
  for i in 1..a.size-1
    second += a[i]
  end
  list << (first - second).abs
  for i in 1..a.size-1
    first += a[i]
    second -= a[i]
    list << (first - second).abs
  end
  return list.min
end
puts solution([3, 1, 2, 4, 3])
puts solution([1.1, 2.0])
