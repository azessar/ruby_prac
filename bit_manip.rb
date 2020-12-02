def to_binary(num)

    half_num = num / 2
    biggest_exp = 1
    until biggest_exp > half_num
        biggest_exp *= 2
    end
    remainder = num - biggest_exp
    [biggest_exp, remainder]

end



p to_binary(5)
p to_binary(100)
p to_binary(103)
p to_binary(2048)