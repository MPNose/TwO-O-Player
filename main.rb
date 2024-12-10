require './game'
require './player'
require './questions'

question = Questions.new
new_game = Game.new(question)

new_game.start