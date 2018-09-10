require 'the_computer'

describe TheComputer do

  subject(:the_computer) { TheComputer.new }

  context '#play' do

# MAKE JUST ONE TEST THAT RETURNS ROCK, PAPER OR SCISSORS
    it 'returns paper' do
      allow(the_computer).to receive(:rand).and_return(1)
      expect(the_computer.play).to eq('paper')
    end

    it 'returns rock' do
      allow(the_computer).to receive(:rand).and_return(0)
      expect(the_computer.play).to eq('rock')
    end

    it 'returns scissors' do
      allow(the_computer).to receive(:rand).and_return(2)
      expect(the_computer.play).to eq('scissors')
    end
  end
end
