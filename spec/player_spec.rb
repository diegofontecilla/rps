require 'player'

describe Player do

  subject(:player) { Player.new('Diego') }

  context '#name' do
    it 'returns the name given' do
      expect(player.name).to eq('Diego')
    end
  end

  context '#option' do
    it 'returns the player option' do
      fake_option = double('fake_option')
      expect(player.option(fake_option)).to eq(fake_option)
    end
  end
end
