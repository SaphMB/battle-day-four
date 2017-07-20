class Game

  DEFAULT_HIT_STRENGTH = 10

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def attack(hit_strength)
    hit_strength = DEFAULT_HIT_STRENGTH
    @player.hp -= hit_strength
  end

 # in app:  game.player1.attack

end
