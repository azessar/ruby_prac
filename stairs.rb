# 1: 1
# 2: 3
# 3: 5
# 4: if you do 1 stair, 3 stairs, it's 6; if  3 stairs, 1 stair, it's 6; if 2 and 2, it's 6... so 18
# 5: 54
def stair_jumps(stairs)
    return 0 if stairs < 0
    return 1 if stairs == 0

    return stair_jumps(stairs - 1) + stair_jumps(stairs - 2) + stair_jumps(stairs - 3)
end

p stair_jumps(1)
p stair_jumps(2)
p stair_jumps(3)
p stair_jumps(4)
p stair_jumps(5)
p stair_jumps(6)