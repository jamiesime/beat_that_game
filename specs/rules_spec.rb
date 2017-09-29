require 'minitest/autorun'
require 'minitest/rg'

require_relative '../dice.rb'
require_relative '../player.rb'
require_relative '../rules.rb'


class TestRules < MiniTest::Test

  def setup
    @player1 = Player.new("Spud", 0)
    @player2 = Player.new("Pam", 0)
    @rules = Rules.new()
    @dice = Dice.new(4)
  end

  # def test_get_names()
  #   assert_equal(["Spud", "Pam"], @rules.get_names())
  # end
  #
  # def test_get_dice()
  #   assert_equal(4, @rules.get_dice())
  # end

  def test_roll_dice()
    player_score = @player.score
    dice_roll = @rules.roll_dice()
    @rules.roll_dice(@player1, @dice.quantity)
    assert_equal(player_score, dice_roll)
  end



end
