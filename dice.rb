class Dice

  attr_reader :current_number

  def initialize()
    @current_number = 0
  end

  def roll()
    new_roll = rand(1..6)
  end

end
