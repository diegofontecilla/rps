require 'player'

describe Player do

  subject(:player) { Player.new('Diego') }

  context '#name' do
    it 'returns the name given' do
      expect(player.name).to eq('Diego')
    end
  end
end
