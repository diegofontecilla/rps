require 'sinatra/base'
require './lib/players'
require './lib/the_computer'
require './lib/game_logic'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_name = Players.new(params[:player_name])
    @game = Game.create
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    # @player_name = $player_name.player_1
    erb :play
  end

  post '/winner' do
    $player_option = params[:player_option]
    redirect '/winner'
  end

  get '/winner' do
    @player_option = $player_option
    @player_1_name = $player_name.player_1
    the_computer  = TheComputer.new
    game_logic = GameLogic.new($player_name, the_computer)
    @the_winner = game_logic.get_winner(@player_option)
    @computer_option = game_logic.computer_option
    erb :winner
  end
end
