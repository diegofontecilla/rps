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
    players = Players.new(params[:player_1_name], params[:player_2_name])
    @game = Game.create(players)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    p 'f'
    p @game.get_players.player_2_name
    erb :play
  end

  post '/winner' do
    @player_1_option = Game.store_player_1_option(params[:player_1_option])
    @player_2_option = Game.store_player_2_option(params[:player_2_option])
    redirect '/winner'
  end

  get '/winner' do
    @player_1_option = Game.get_player_1_option
    @player_2_option = Game.get_player_2_option
    @game = Game.instance
    the_computer  = TheComputer.new
    game_logic = GameLogic.new(@game, the_computer)
    @the_winner = game_logic.get_winner(@player_1_option, @player_2_option)
    @computer_option = game_logic.computer_option
    erb :winner
  end
end
