#are they permutations? O(n)
def perm?(str1, str2)
    return false if str1.length != str2.length
    hash1 = {}
    hash2 = {}
    ("a".."z").to_a.each {|char| hash1[char] = 0}
    ("a".."z").to_a.each {|char| hash2[char] = 0}
    str1.each_char {|char| hash1[char] += 1}
    str2.each_char {|char| hash2[char] += 1}
    hash1 == hash2
end

p perm?("cat", "act")
p perm?("abcd", "dbca")
p perm?("hhhh", "hh")