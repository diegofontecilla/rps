require 'game_logic'

describe GameLogic do

  let(:fake_computer) { double(:the_computer) }
  subject(:game_logic) { GameLogic.new(fake_computer) }

  context '#get_winner' do

    it 'make player wins when choose rock and computer scissors' do
      allow(fake_computer).to receive(:play).and_return('scissors')
      fake_computer.play
      expect(game_logic.get_winner('rock')).to eq('diego is the winner!')
    end

    it 'make player loose when choose scissors and computer rock' do
      allow(fake_computer).to receive(:play).and_return('rock')
      fake_computer.play
      expect(game_logic.get_winner('scissors')).to eq('the computer is the winner!')
    end

    it 'declare a tie when computer and player choose the same' do
      allow(fake_computer).to receive(:play).and_return('paper')
      fake_computer.play
      expect(game_logic.get_winner('paper')).to eq('TIE!')
    end
  end
end
