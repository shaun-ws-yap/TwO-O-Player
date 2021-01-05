def play(p1, p2, current_player)

  # initialize current player
  player = current_player === 1 ? p1 : p2

  # check win condition
  if p1.health === 0 || p2.health === 0
    puts "\nPlayer #{current_player === 1 ? 1 : 2} wins with a score of #{player.health}/3"
    return
  end

  # generate a new question
  q = Question.new

  # print out question
  puts "\n\n-------------NEW TURN-------------"
  puts "Player #{current_player}'s turn!"
  puts q.question

  # receives answer from current player
  answer = gets.chomp.to_i

  # checks answer
  if q.answer(answer)
    puts "\nCORRECT! Moving on to the next turn..."
  else
    puts "\nINCORRECT! You lose a live!"
    player.health -= 1
  end

  # prints current score after round ends
  puts "P1: #{p1.health}/3 vs. P2: #{p2.health}/3"
end