require 'sinatra/base'
require './lib/players'
require './lib/the_computer'
require './lib/game_logic'
require './lib/game'
require './lib/the_option'
require './lib/game_two'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    players = Players.new(params[:player_name])
    @game = Game.create(players)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/winner' do
    the_option = TheOption.new(params[:player_option])
    @player_1_option = Game.instance_2(the_option)
    redirect '/winner'
  end

  get '/winner' do
    @player_1_option = Game.player_option
    @game = Game.instance
    the_computer  = TheComputer.new
    game_logic = GameLogic.new(@game, the_computer)
    @the_winner = game_logic.get_winner(@player_1_option)
    @computer_option = game_logic.computer_option
    erb :winner
  end
end
