class Game
  def initialize(question)
    @question = question
  end
  def start
    puts "----- New Game -----"
   @question.ask_question
  end

end

