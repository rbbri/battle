require 'message'

describe Message do


subject(:message) { described_class.new }
let(:game) { double(:game, attack: nil, heal: nil, current_turn: player_1, non_active: player_2, winner: 'John', loser: 'Not John')}
let(:player_1) { double :player, name: 'John'}
let(:player_2) { double :player, name: 'Not John'}


  describe '#start' do
    it 'displays the start message' do
      expect(message.start).to eq "Let Battle Commence!"
    end
  end
  describe '#attack' do
    it 'displays a message describing who attacked who' do
      game.attack
      expect(message.attack).to eq "#{game.current_turn.name} attacked #{game.non_active.name}"
    end
  end
  describe '#heal' do
    it 'displays a message describing who healed themself' do
      game.heal
      expect(message.heal).to eq "#{game.current_turn.name} has a nap to rest up"
    end
  end
  describe '#game_over' do
    it 'displays a message describing the winner' do
      allow(game).to receive(:game_over?).and_return(true)
      expect(message.game_over).to eq "#{game.winner} defeated #{game.loser}"
    end

  end
end
