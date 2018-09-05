require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    erb :play
  end

  post '/winner' do
    session[:player_option] = params[:player_option]
    erb :winner
  end
end
