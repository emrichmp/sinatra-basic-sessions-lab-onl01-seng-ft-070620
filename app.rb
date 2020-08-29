require_relative 'config/environment'

class App < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, "secret"
  end
  
  get '/' do
    erb :index
  end
  
  post '/chechout' do
    @sessions = sessions
    item = param[:item]
    @sessions[:item] = item
  end
end