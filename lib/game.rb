class Game

  DEFAULT_HIT_STRENGTH = 10

  attr_reader :player_one, :player_two

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def attack(player)
    player.reduce_points
  end

end
