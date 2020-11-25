

def move(n, from, other, to)
    unless n == 0
        move(n - 1, from, to, other)
        puts "Moved disc from #{from} to #{to}"
        move(n - 1, other, from, to)
    end
end


move(2, 'A', 'B', 'C')