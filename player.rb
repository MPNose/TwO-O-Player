class Player
  attr_reader :points
  attr_accessor :name
  def initialize(name)
    @name = name
    @points = 3
  end
  def decrement_point
    @points -= 1
  end
 
end