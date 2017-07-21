class Game

  DEFAULT_HIT_STRENGTH = 10

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack(player)
    hit_strength = DEFAULT_HIT_STRENGTH
    @player.reduce_points
  end

end
