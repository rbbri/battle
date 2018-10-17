require 'player'

describe Player do
  subject(:john) { Player.new('John') }
  it 'allows a player to see their hit_points' do
    expect(john.hit_points).to eq 60
  end
  describe '#name' do
    it 'returns a name' do
      expect(john.name).to eq 'John'
    end
  end
end
