


class Rules

  attr_accessor :players, :dice

  def initialize(dice)
    @dice = dice
  end

  def get_names()
    players = []
    puts "This is a two player game. Please enter Player 1's name"
    players << gets.chomp
    puts "Welcome #{players[0]}!"
    puts "Please enter Player 2's name."
    players << gets.chomp
    puts "Welcome, #{players[1]}!"
    return players
  end

  def get_dice()
    puts "Please enter how many dice you would like to play with (from 1 - 10)."
    num = gets.chomp.to_i
    if !num.between?(1, 10)
      puts "That number is unreasonable. I have decided on a number for you."
      num = rand(1..10)
    end
    return num
  end

  def roll_dice(quantity)
    result = []
    quantity.times { result << @dice.roll_dice }
    return result
  end

  def sort_dice(player, array)
    array.sort! {|n1, n2| n2 <=> n1}
    score = array.join().to_i()
    puts "#{player.name} rolled a maximum number of #{score} !"
    return score
  end

  def compare_scores(current, other)
    if current > other
      return true
    else
      return false
    end
  end

  def change_turn(players)
    players.rotate!()
    puts "Now it's #{players[0].name}'s turn. Hit return to roll."
    gets.chomp
  end

end
