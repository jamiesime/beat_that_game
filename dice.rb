


class Dice

  attr_accessor :quantity

  def initialize(quantity)
    @quantity = quantity
  end

  def roll_dice()
    return rand(1..6)
  end

end
