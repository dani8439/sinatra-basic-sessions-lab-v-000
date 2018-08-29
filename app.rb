require_relative 'config/environment'

class App < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "falafel"
  end

  get '/' do
    @session = session
    erb :index
  end

  post '/checkout' do
    session[:id] =
    @session = session
    erb :checkout
  end
end
