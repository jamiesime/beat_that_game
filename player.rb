

class Player

  attr_accessor :name, :score

  def initialize(name, score)
    @name = name
    @score = score
  end

  def set_new_score(new_score)
    @score = new_score
  end

end
