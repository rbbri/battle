require 'player'

describe Player do
  subject(:john) { Player.new('John') }

  describe '#name' do
    it 'returns a name' do
      expect(john.name).to eq 'John'
    end
  end
end
