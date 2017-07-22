class Game

  DEFAULT_HIT_STRENGTH = 10

  attr_reader :current_turn

  def initialize(player_one, player_two)
    @players = [player_one, player_two]
    @current_turn = player_one
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

  def switch_turns
    @current_turn = opponent_of(current_turn)
  end

  def opponent_of(the_player)
    @players.select { |player| player != the_player }.first
  end

end
