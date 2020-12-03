def to_binary(decimal)
    return "error" if decimal > 1 || decimal < 0
    return 0 if decimal == 0
    biggest_fac = 1.0
    until biggest_fac <= decimal
        biggest_fac /= 2
    end
    remainder = decimal - biggest_fac
    # [clean_binary(biggest_fac), to_binary(remainder)]
    # raw_remainder = to_binary(remainder).to_s
    # clean_binary(biggest_fac) + remove_front(raw_remainder)
    clean_binary(biggest_fac) + remove_front(to_binary(remainder).to_s)

end

def clean_binary(num)
    binary = "1"
    until num == 1
        binary = "0" + binary
        num *= 2
    end
    return "." + binary[1..-1]
end

def remove_front(string)
    i = 0
    until string[i] == "0"
        i += 1
    end
    string[i+1.. -1]
end

p to_binary(0.5)
p to_binary(0.75)
p to_binary(0.25)
p to_binary(0.125)
p to_binary(0.0625)
p to_binary(0.8125)

p to_binary(-5)