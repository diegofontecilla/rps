require 'sinatra/base'
require './lib/player'
require './lib/the_computer'

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
    $player_option = params[:player_option]
    $computer_option = TheComputer.new
    redirect '/winner'
  end

  get '/winner' do
    @player_option = $player_option
    @player_name = $player_name.name
    @computer_option = $computer_option.play
    erb :winner
  end
end
