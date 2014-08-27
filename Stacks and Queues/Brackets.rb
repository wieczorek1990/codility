def solution(s)
    b = ['(', '[', '{']
    e = [')', ']', '}']
    stack = []
    s.each_char do |c|
        if b.include? c
            stack.push c
        elsif e.include? c
            p = stack.pop
            unless opposite(p) == c
                return 0
            end
        else
            return 0
        end
    end
    return stack.empty? ? 1 : 0
end

def opposite(s)
    case s
    when '('
        return ')'
    when ')'
        return '('
    when '['
        return ']'
    when ']'
        return '['
    when '{'
        return '}'
    when '}'
        return '{'
    end
end
puts solution('{}')
