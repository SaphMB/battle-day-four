class Player

  DEFAULT_HP = 70

  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  def reduce_points
    @hp -= 10
  end

end
