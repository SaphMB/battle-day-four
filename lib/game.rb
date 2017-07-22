class Game

  DEFAULT_HIT_STRENGTH = 10

  def initialize(player_one, player_two)
    @players = [player_one, player_two]
    @player_one = player_one
    @player_two = player_two
  end

  def attack(player)
    player.reduce_points
  end

  def player_one
    @players.first
  end

  def player_two
    @players.last
  end

end
