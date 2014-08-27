require 'set'
def solution(a)
    s = Set.new
    a.each do |i|
        s << i
    end
    return s.size
end
