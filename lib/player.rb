class Player

  attr_reader :player_option

  def initialize(name)
    @name = name
  end

  def name
    return @name if @name != ""
    'the computer'
  end

  def get_choice(player_option)
    return computer_choice if @name == ""
    return human_choice(player_option)
  end

  private

  def human_choice(player_option)
    @player_option = player_option
  end

  def computer_choice
    @player_option = ["rock", "paper", "scissors", "spock", "lizard"][rand(0..4)]
  end
end
