require_relative 'players'
require_relative 'the_computer'
require_relative 'game'

class GameLogic

  def initialize(game, the_computer)
    @game = game
    @the_computer = the_computer
    @choices = {
      'rock' => ['scissors'],
      'paper' => ['rock'],
      'scissors' => ['paper']
      }
  end

  def get_winner(player_option)
    @computer_option = @the_computer.computer_choice
    return tie if player_option == @computer_option
    @choices[player_option].include?(@computer_option) ? player_1_won : player_2_won
  end

  def computer_option
    @computer_option
  end

  private

  def player_1_won
    "#{@game.get_players.player_1_name} is the winner!"
  end

  def player_2_won
    p @game.get_players
    "#{@game.get_players.player_2_name} is the winner!"
  end

  def tie
    'this is a TIE!'
  end
end
