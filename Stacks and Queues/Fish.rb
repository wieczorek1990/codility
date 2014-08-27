def solution(a, b)
  flowing_down = []
  survivors = 0

  a.zip(b).each do |size, direction|
    if direction == 0
      if flowing_down.empty?
        survivors += 1
      else
        while flowing_down.any?
          if size > flowing_down.last
            flowing_down.pop
          else
            break
          end
          survivors += 1 if flowing_down.empty?
        end
      end
    else
      flowing_down << size
    end
  end
  survivors + flowing_down.size
end
puts solution([1,3,4,5], [0, 1, 0, 0])
