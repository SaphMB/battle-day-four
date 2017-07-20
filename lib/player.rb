class Player

  DEFAULT_HP = 70

  attr_reader :name, :hp

  def initialize(name, hp = DEFAULT_HP)
    @name = name
    @hp = hp
  end

  # def attack(hit_strength)
  #   hit_strength = DEFAULT_HIT_STRENGTH
  #   @hp -= hit_strength
  # end

end
