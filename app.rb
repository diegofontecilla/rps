require 'sinatra/base'
require './lib/player'
require './lib/game_logic'
require './lib/game_session'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game_session = GameSession.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    @game_session = GameSession.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/player_1_option' do
    @game_session.player_1.get_choice(params[:player_1_option])
    redirect '/player_2_option'
  end

  get '/player_2_option' do
    erb :player_2_option
  end

  post '/player_2_option' do
    @game_session.player_2.get_choice(params[:player_2_option])
    redirect '/winner'
  end

  post '/winner' do
    @game_session.player_1.get_choice(params[:player_1_option])
    @game_session.player_2.get_choice(params[:player_2_option])
    redirect '/winner'
  end

  get '/winner' do
    game_logic = GameLogic.new(@game_session)
    @player_1_option = @game_session.player_1.player_option
    @player_2_option = @game_session.player_2.player_option
    @the_winner = game_logic.get_winner(@player_1_option, @player_2_option)
    erb :winner
  end
end
