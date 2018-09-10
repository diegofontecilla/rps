require 'the_computer'

describe TheComputer do

  subject(:the_computer) { TheComputer.new }

  context '#computer_choice' do

    it 'returns paper' do
      allow(the_computer).to receive(:rand).and_return(1)
      expect(the_computer.computer_choice).to eq('paper')
    end

    it 'returns rock' do
      allow(the_computer).to receive(:rand).and_return(0)
      expect(the_computer.computer_choice).to eq('rock')
    end

    it 'returns scissors' do
      allow(the_computer).to receive(:rand).and_return(2)
      expect(the_computer.computer_choice).to eq('scissors')
    end
  end
end
