class TheComputer

  def initialize
    @options = ["rock", "paper", "scissors"]
  end

  def play
    @options[rand(0..2)]
    # @options.sample
  end
end
