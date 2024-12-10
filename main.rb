require './game'
require './player'
require './questions'

question = Questions.new
player1 = Player.new("player 1")
player2 = Player.new("player 2")
new_game = Game.new(question, player1, player2)

new_game.start