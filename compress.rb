
def compress(string)
    answer = ""
    count = 1
    i = 0
    while i < string.length
        if string[i] == string[i + 1]
            count += 1
        else
            answer += count.to_s + string[i]
            count = 1
        end
        i+=1
    end
    return answer.length > string.length ? string : answer
end

p compress("aaabb")
p compress("zzz")
p compress("zzttbbba")
p compress("abcdefa")