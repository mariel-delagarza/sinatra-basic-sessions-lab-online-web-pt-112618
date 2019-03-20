require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable sessions
    set :session_secret, "w@ffl3s"
  end

  get '/' do
    erb :index
  end

  post '/checkout' do 
    params[:item] = session[:item]
    @session = session 
    erb :checkout 
  end 
end
