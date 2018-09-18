require_relative 'player'
require_relative 'game_session'

class GameLogic

  def initialize(game_session)
    @game_session = game_session
    @choices = {
      'rock' => ['scissors', 'lizard'],
      'paper' => ['rock', 'spock'],
      'scissors' => ['paper', 'lizard'],
      'spock' => ['scissors', 'rock'],
      'lizard' => ['spock', 'paper']
      }
  end

  def get_winner(player_1_option, player_2_option)
    return tie if player_1_option == player_2_option
    player_1 = @game_session.player_1.name
    player_2 = @game_session.player_2.name
    @choices[player_1_option].include?(player_2_option) ? winner(player_1) : winner(player_2)
  end

  private

  def winner(player)
    "#{player} is the winner!"
  end

  def tie
    'this is a TIE!'
  end
end
