require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  get '/' do
    "Hello Rock-Paper-Scissors!"
  end

end
