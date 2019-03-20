require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable sessions
    set :session_secret, "w@ffl3s"
  end

  get '/' do
    erb :index
  end


end
