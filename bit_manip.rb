def to_binary(num)
    return num.to_s if num < 2
    half_num = num / 2
    biggest_exp = 2
    until biggest_exp > half_num
        biggest_exp *= 2
    end
    remainder = num - biggest_exp
    remainder_digits = to_binary(remainder).length
    biggest_exp_digits = clean_binary(biggest_exp).length
    clean_binary(biggest_exp)[0..biggest_exp_digits - remainder_digits - 1] + to_binary(remainder)
end

def clean_binary(num)
    binary = "1"
    until num == 1
        binary += "0"
        num /= 2
    end
    binary
end

p to_binary(0)
p to_binary(1)
p to_binary(2)
p to_binary(5)
p to_binary(6)
p to_binary(8)
p to_binary(100)
p to_binary(103)
p to_binary(2048)
p to_binary(4096)