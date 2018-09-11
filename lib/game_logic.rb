require_relative 'players'
require_relative 'the_computer'

class GameLogic

  def initialize(players, the_computer)
    @players = players
    @the_computer = the_computer
    @choice_hash = {
      'rock' => ['scissors'],
      'paper' => ['rock'],
      'scissors' => ['paper']
      }
  end

  def get_winner(player_option)
    @computer_option = @the_computer.computer_choice
    return tie if player_option == @computer_option
    @choice_hash[player_option].include?(@computer_option) ? player_1_won : player_2_won
  end

  private

  def computer_option
    @computer_option
  end

  def player_1_won
    "#{@players.player_1} is the winner!"
  end

  def player_2_won
    "#{@players.player_2} is the winner!"
  end

  def tie
    'this is a TIE!'
  end
end
