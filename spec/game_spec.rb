require 'game'

describe Game do
  subject(:game) { described_class.new(player_1, player_2, message) }
  let(:message) {double :message}
  let(:player_1) { double :player, name: 'John', paralyse: nil, healing: nil, mod: 0.5  }
  let(:player_2) { double :player, name: 'Not John', paralyse: nil, healing: nil, mod: 0.5 }

  context 'when game is started' do
    it 'has two players' do
      expect(game.player_1.name).to eq 'John'
    end
  end
  describe '#attack' do
    it 'damages the player' do
      allow(game).to receive(:non_active).and_return(player_2)
      expect(player_2).to receive(:damage)
      game.attack
    end
  end
  describe '#heal' do
    it 'heals the player' do
      allow(game).to receive(:current_turn).and_return(player_1)
      expect(player_1).to receive(:healing)
      game.heal
    end
  end
  # describe '#paralyse' do
  #   it 'paralyses the player' do
  #     allow(player_2).to receive(:paralyse)
  #     game.paralyse
  #
  #
  #   end
  # end
end
