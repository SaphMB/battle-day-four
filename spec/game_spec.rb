require 'game'

describe Game do
  subject(:game) { described_class.new(player_one, player_two) }
  let(:player_one) {double :player_one}
  let(:player_two) {double :player_two}

  describe '#player_one' do
    it 'retrieves the first player' do
      expect(game.player_one).to eq player_one
    end
  end

  describe '#player_two' do
    it 'retrieves the second player' do
      expect(game.player_two).to eq player_two
    end
  end

  it 'reduces HP when attacked' do
    expect(game.player_two).to receive(:reduce_points)
    game.attack(game.player_two)
  end

end
