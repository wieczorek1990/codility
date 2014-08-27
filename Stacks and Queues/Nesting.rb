def solution(s)
    stack = []
    s.each_char do |c|
       if c == '('
           stack.push c
       elsif c == ')'
            p = stack.pop
            unless p == '(' and c == ')'
                return 0
            end
        else
            return 0
        end
    end
    return stack.empty? ? 1 : 0
end
puts solution('[]')
