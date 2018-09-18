require 'game_session'

describe GameSession do

    let(:fake_player_1) { double(:player_1) }
    let(:fake_player_2) { double(:player_2) }
    subject(:game_session) { GameSession }

  context '#create' do
    it 'creates a new instance of GameSession class' do
      allow(game_session).to receive(:new).and_return(GameSession:0x00007f7fc05a0c70)
      game_session.create(fake_player_1, fake_player_2)
      expect(game_session.instance).to eq(GameSession.new(fake_player_1, fake_player_2))
    end
  end

  context '#player_1' do
    it 'returns the object passed as the first parameter' do
      game_session = GameSession.new(fake_player_1, fake_player_2)
      expect(game_session.player_1).to eq(fake_player_1)
    end
  end

  context '#player_2' do
    it 'returns the object passed as the second parameter' do
      game_session = GameSession.new(fake_player_1, fake_player_2)
      expect(game_session.player_2).to eq(fake_player_2)
    end
  end
end
