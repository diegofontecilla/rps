require 'the_computer'

describe TheComputer do

  let(:fake_option) { double()}
  subject(:the_computer) { TheComputer.new }

  it 'returns a random option for rock, paper, scissors' do
    allow(the_computer).to receive(:rand).and_return(1)
    expect(the_computer.play).to eq('paper')
  end
end
