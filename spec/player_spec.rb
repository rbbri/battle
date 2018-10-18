require 'player'

describe Player do
  subject(:john) { Player.new('John') }
  subject(:not_john) { Player.new('Not John') }
  let(:game) { double(:game, non_active: "John") }
  it 'allows a player to see their hit_points' do
    expect(john.hit_points).to eq 60
  end
  describe '#name' do
    it 'returns a name' do
      expect(john.name).to eq 'John'
    end
  end
  describe '#damage' do
    it 'sometimes deals full damage' do
      allow(not_john).to receive(:mod).and_return(1)
      not_john.damage
      expect(not_john.hit_points).to eq 50
    end
    it 'sometimes deals 0.75 damage' do
      allow(not_john).to receive(:mod).and_return(0.75)
      not_john.damage
      expect(not_john.hit_points).to eq 52.5
    end
    it 'sometimes deals 0.5 damage' do
      allow(not_john).to receive(:mod).and_return(0.5)
      not_john.damage
      expect(not_john.hit_points).to eq 55
    end
    it 'sometimes deals 0.25 damage' do
      allow(not_john).to receive(:mod).and_return(0.25)
      not_john.damage
      expect(not_john.hit_points).to eq 57.5
    end
    it 'sometimes does not deal any damage' do
      allow(not_john).to receive(:mod).and_return(0)
      not_john.damage
      expect(not_john.hit_points).to eq 60
    end
  end

  describe '#healing' do
    it 'sometimes heals fully' do
      allow(not_john).to receive(:mod).and_return(1)
      not_john.healing
      expect(not_john.hit_points).to eq 70
    end
    it 'sometimes deals 0.75 healing' do
      allow(not_john).to receive(:mod).and_return(0.75)
      not_john.healing
      expect(not_john.hit_points).to eq 67.5
    end
    it 'sometimes deals 0.5 healing' do
      allow(not_john).to receive(:mod).and_return(0.5)
      not_john.healing
      expect(not_john.hit_points).to eq 65
    end
    it 'sometimes deals 0.25 healing' do
      allow(not_john).to receive(:mod).and_return(0.25)
      not_john.healing
      expect(not_john.hit_points).to eq 62.5
    end
    it 'sometimes does not deal any healing' do
      allow(not_john).to receive(:mod).and_return(0)
      not_john.healing
      expect(not_john.hit_points).to eq 60
    end
  end

  # describe '#paralysed' do
  #   # it 'sometimes heals fully' do
  #   #   allow(not_john).to receive(:mod).and_return(1)
  #   #   not_john.healing
  #   #   expect(not_john.hit_points).to eq 70
  #   # end
  #   # it 'sometimes deals 0.75 healing' do
  #   #   allow(not_john).to receive(:mod).and_return(0.75)
  #   #   not_john.healing
  #   #   expect(not_john.hit_points).to eq 67.5
  #   # end
  #   # it 'sometimes deals 0.5 healing' do
  #   #   allow(not_john).to receive(:mod).and_return(0.5)
  #   #   not_john.healing
  #   #   expect(not_john.hit_points).to eq 65
  #   # end
  #   # it 'sometimes deals 0.25 healing' do
  #   #   allow(not_john).to receive(:mod).and_return(0.25)
  #   #   not_john.healing
  #   #   expect(not_john.hit_points).to eq 62.5
  #   # end
  #   it 'sometimes does not work' do
  #     allow(not_john).to receive(:mod).and_return(0)
  #     not_john.paralysed
  #     expect(not_john.hit_points).to eq 60
  #   end
  # end



end
