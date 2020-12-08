def robot_paths(x,y)
    return 1 if x == 0 || y == 0
    return 2 if x == 1 && y == 1

    return robot_paths(x-1, y) + robot_paths(x, y-1)
end

p robot_paths(1,1) #2
p robot_paths(1,0) #1
p robot_paths(2,1) #3
p robot_paths(2,2) #6
p robot_paths(3,2)
p robot_paths(3,3)