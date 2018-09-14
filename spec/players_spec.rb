require 'players'

describe Players do

  context '#player_1' do
    it 'returns the name given' do
      players = Players.new('diego', '')
      expect(players.player_1_name).to eq('diego')
    end
  end

  context '#player_2' do
    it 'if no name given for player 2 then returns "the computer"' do
      players = Players.new('diego', '')
      expect(players.player_2_name).to eq('the computer')
    end

    it 'returns the name given' do
      players = Players.new('diego', 'romeo')
      expect(players.player_2_name).to eq('romeo')
    end
  end
end
