def to_binary(decimal)
    return "error" if decimal > 1 || decimal < 0
    return 0 if decimal == 0
    biggest_fac = 1.0
    until biggest_fac <= decimal
        biggest_fac /= 2
    end
    remainder = decimal - biggest_fac
    [biggest_fac, remainder]
end

p to_binary(0.5)
p to_binary(0.7)
p to_binary(0.75)
p to_binary(0.25)
p to_binary(-5)