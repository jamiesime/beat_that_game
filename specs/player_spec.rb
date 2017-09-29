require 'minitest/autorun'
require 'minitest/rg'

require_relative '../dice.rb'
require_relative '../player.rb'
require_relative '../rules.rb'


class TestPlayer < MiniTest::Test

  def setup
    @player1 = Player.new("Spud", 0)
    @player2 = Player.new("Pam", 0)
    @rules = Rules.new()
    @dice = Dice.new(4)
  end

  def test_new_score(score)
    assert_equal()
  end


end
