require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) { double :player, name: 'John', healing: nil }
  let(:player_2) { double :player, name: 'Not John', healing: nil }

  context 'when game is started' do
    it 'has two players' do
      expect(game.player_1.name).to eq 'John'
    end
  end
  describe '#attack' do
    it 'damages the player' do
      expect(player_2).to receive(:damage)
      game.attack
    end
  end
  describe '#heal' do
    it 'heals the player' do
      expect(player_1).to receive(:healing)
      game.heal
    end
  end
end
