require 'player'

describe Player do

  context '#name' do
    it 'returns the name given' do
      player = Player.new('diego')
      expect(player.name).to eq('diego')
    end

    it 'if no name given for one of the players then returns "the computer"' do
      player = Player.new('')
      expect(player.name).to eq('the computer')
    end
  end

  context '#get_choice' do
    it 'when a name was initially given, returns the player choice' do
      player = Player.new('diego')
      expect(player.get_choice('rock')).to eq('rock')
    end

    it 'when no name was initially given, returns rock as the computer choice' do
      player = Player.new('')
      allow(player).to receive(:computer_choice).and_return('rock')
      expect(player.get_choice(nil)).to eq('rock')
    end

    it 'when no name was initially given, returns scissors as the computer choice' do
      player = Player.new('')
      allow(player).to receive(:computer_choice).and_return('scissors')
      expect(player.get_choice(nil)).to eq('scissors')
    end
  end
end
