require 'message'

describe Message do


subject(:message) { described_class.new }
let(:game) { double(:game, attack: nil, current_turn: player_1, non_active: player_2)}
let(:player_1) { double :player, name: 'John'}
let(:player_2) { double :player, name: 'Not John'}

  describe '#start' do
    it 'displays the start message' do
      expect(message.start).to eq "Let Battle Commence!"
    end
  end
  describe '#attack' do
    it 'displays who attacked who' do
      game.attack
      expect(message.attack).to eq "#{game.current_turn.name} attacked #{game.non_active.name}"
    end
  end
  describe '#heal' do

  end
  describe '#game_over' do

  end
end
