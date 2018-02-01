require('minitest/autorun')
require('minitest/rg')

require_relative('../dice.rb')

class TestDice < MiniTest::Test

  def setup
    @dice = Dice.new()
  end

  # not sure whats wrong

  def test_roll_dice
    1000.times do
      accepted_values = (1..6).to_a()
      @dice.roll()
      result = @dice.current_number
      assert_equal(true, accepted_values.include?(result))
    end
  end

end
