class Game
  def initialize(question, player1, player2)
    @question = question
    @player1 = player1
    @player2 = player2
    @turn = 1
  end
  def start
    puts "----- New Game -----"
    while @player1.points > 0 && @player2.points > 0
      play_round
    end
   show_winner
  end
def play_round
  #verify whose turn it is by checking if turn is one
  current_player = (@turn == 1) ? @player1 : @player2 
  puts "It's Player #{@turn}'s turn"
  correct = @question.ask_question
  if correct
    puts "Correct!"
  else
    current_player.decrement_point
    puts "Wrong answer."
    puts "#{current_player.name} now has #{current_player.points} points."
  end
  # if turn equals 1, it's two, otherwise 1
  @turn = @turn == 1 ? 2 : 1
end
def show_winner
 if @player1.points > 0
  puts "#{@player1.name} wins with a score of #{@player1.points}/3"
 else
  puts "#{@player2.name} wins with a score of #{@player2.points}/3"
end
puts "----- Game Over man, Game Over! -----"

end
end

