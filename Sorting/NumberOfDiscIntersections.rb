def solution(a)
    discs = 0
    for i in 0..a.size-1
        for j in i..a.size-1
            if intersect(i, a[i], j, a[j]) and not i == j
                discs += 1
            end
        end
    end
    discs > 10_000_000 ? -1 : discs
end

def intersect(i, ai, j, aj)
    not (i + ai < j - aj or i - ai > j + aj)
end
