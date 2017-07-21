require 'game'

describe Game do
  subject(:game) { described_class.new(player_one, player_two) }
  let(:player_one) {double :player_one}
  let(:player_two) {double :player_two}

  it 'reduces HP when attacked' do
    expect(game.player_two).to receive(:reduce_points)
    game.attack(game.player_two)
  end

end
