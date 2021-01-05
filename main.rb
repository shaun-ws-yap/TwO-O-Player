require './player'
require './question'
require './helpers'

puts "*************************"
puts "Welcome to the Math Game!"
puts "*************************\n\n"
puts "Each player has 3 lives."
puts "If you answer incorrectly, you lose a life!"
puts "When you have no lives left, you lose!"

# initialize 2 players
p1 = Player.new
p2 = Player.new

# check game condition
while p1.health > 0 && p2.health > 0 do
  play(p1, p2, 1)
  play(p1, p2, 2)
end

puts "\n-------GAME OVER!--------"
