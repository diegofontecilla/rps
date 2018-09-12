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

  def get_winner(player)
    @computer_option = @the_computer.computer_choice
    player = player.player_option
    return tie if player == @computer_option
    @choice_hash[player].include?(@computer_option) ? player_1_won : player_2_won
  end

  def computer_option
    @computer_option
  end

  private

  def player_1_won
    "#{@players.get_players.player_1_name} is the winner!"
  end

  def player_2_won
    "#{@players.get_players.player_2_name} is the winner!"
  end

  def tie
    'this is a TIE!'
  end
end
