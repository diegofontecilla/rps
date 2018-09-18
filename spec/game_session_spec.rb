require 'game_session'

describe GameSession do

    let(:fake_player_1) { double(:player_1) }
    let(:fake_player_2) { double(:player_2) }
    subject(:game_session) { GameSession }

  context '#create' do
    it 'creates a new instance of GameSession class' do
      allow(game_session).to receive(:new).and_return(GameSession)
      game_session.create(fake_player_1, fake_player_2)
      expect(game_session.instance).to eq(GameSession.new(fake_player_1, fake_player_2))
    end
  end
end
