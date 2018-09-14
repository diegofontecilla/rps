require_relative 'players'
require_relative 'the_computer'
require_relative 'game'

class GameLogic

  def initialize(game, the_computer)
    @game = game
    @the_computer = the_computer
    @choices = {
      'rock' => ['scissors', 'lizard'],
      'paper' => ['rock', 'spock'],
      'scissors' => ['paper', 'lizard'],
      'spock' => ['scissors', 'rock'],
      'lizard' => ['spock', 'paper']
      }
  end

  def get_winner(player_1_option, player_2_option)
    return player_against_computer(player_1_option) if player_2_option == nil
    player_aginst_player(player_1_option, player_2_option)
  end

  def computer_option
    @computer_option
  end

  private

  def player_against_computer(player_1_option)
    @computer_option = @the_computer.computer_choice
    return tie if player_1_option == @computer_option
    @choices[player_1_option].include?(@computer_option) ? player_1_won : player_2_won
  end

  def player_aginst_player(player_1_option, player_2_option)
    return tie if player_1_option == player_2_option
    @choices[player_1_option].include?(player_2_option) ? player_1_won : player_2_won
  end

  def player_1_won
    "#{@game.get_players.player_1_name} is the winner!"
  end

  def player_2_won
    "#{@game.get_players.player_2_name} is the winner!"
  end

  def tie
    'this is a TIE!'
  end
end
