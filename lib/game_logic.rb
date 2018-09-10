require_relative 'player'

class GameLogic

  def initialize(the_computer = TheComputer.new)
    @the_computer = the_computer
    @choice_hash = {
      'rock' => ['scissors'],
      'paper' => ['rock'],
      'scissors' => ['paper']
      }
  end

  def get_winner(player_option)
    computer_option = @the_computer.play
    return 'TIE!' if player_option == computer_option
    @choice_hash[player_option].include?(computer_option) ? "diego is the winner!" : "the computer is the winner!"
  end
end
