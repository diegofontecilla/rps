require 'game_logic'

describe GameLogic do

  let(:fake_player_1) { double(:player, :name => 'diego') }
  let(:fake_player_2) { double(:player, :name => 'the computer') }
  let(:fake_game_session) { double(:game_session, :player_1 => fake_player_1, :player_2 => fake_player_2) }
  subject(:game_logic) { GameLogic.new(fake_game_session) }

  context '#get_winner' do

    it 'establishes that player 1 wins when choose rock, while player 2 chose scissors' do
      expect(game_logic.get_winner('rock', 'scissors')).to eq('diego is the winner!')
    end

    it 'establishes that player 1 looses when choose scissors, while player 2 rock' do
      expect(game_logic.get_winner('scissors', 'rock')).to eq('the computer is the winner!')
    end

    it 'declares a tie when player 1 and player 2 choose the same' do
      expect(game_logic.get_winner('paper', 'paper')).to eq('this is a TIE!')
    end
  end
end
