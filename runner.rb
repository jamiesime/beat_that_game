require_relative './dice.rb'
require_relative './player.rb'
require_relative './rules.rb'

@dice = Dice.new(0)
@rules = Rules.new(@dice)

winner = false
players = @rules.get_names()
players[0] = Player.new(players[0], 0)
players[1] = Player.new(players[1], 0)
dice = @rules.get_dice()

while (!winner)
  roll_result = @rules.roll_dice(dice)
  new_score = @rules.sort_dice(players[0], roll_result)
  players[0].set_new_score(new_score)
  continue = @rules.compare_scores(players[0].score, players[1].score)
  if !continue
    puts "#{players[0].name} can't beat #{players[1].score}."
    puts "#{players[1].name} has won the game."
    winner = true
  else
    @rules.change_turn(players)
  end
end
