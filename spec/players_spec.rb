require 'players'

describe Players do

  context '#player_1' do
    it 'returns the name given' do
      players = Players.new('diego')
      expect(players.player_1).to eq('diego')
    end

    it 'if no name given returns the computer' do
      players = Players.new
      expect(players.player_1).to eq('the computer')
    end
  end

  context '#player_2' do
    it 'returns the name given' do
      players = Players.new
      expect(players.player_2).to eq('the computer')
    end
  end
end
