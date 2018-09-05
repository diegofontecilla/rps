require 'player'

describe Player do
  subject(:diego) { Player.new('Diego') }

  describe '#name' do
    it 'returns the name' do
      expect(diego.name).to eq('Diego')
    end
  end
end
