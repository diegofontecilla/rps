require 'sinatra/base'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    $player_name = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name.name
    erb :play
  end

  post '/winner' do
    session[:player_option] = params[:player_option]
    erb :winner
  end
end
