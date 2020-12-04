def win_chance(prob)
    first_game = prob
    second_game = (prob ** 3) + (prob * prob * (1 - prob)) + (prob * (1 - prob) * prob) + ((1 - prob) * prob * prob)

    [first_game, second_game, "#{first_game > second_game ? "first" : "second"}"]
end

p win_chance(0.1)
p win_chance(0.2)
p win_chance(0.3)
p win_chance(0.4)
p win_chance(0.5)
p win_chance(0.6)
p win_chance(0.7)
p win_chance(0.8)
p win_chance(0.9)