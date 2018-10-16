require 'sinatra/base'


class Battle < Sinatra::Base
enable :sessions
  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:p1] = params[:p1]
    session[:p2] = params[:p2]
    redirect to('/play')
  end

  get '/play' do
    @p1 = session[:p1]
    @p2 = session[:p2]
    erb(:play)
  end

  get '/attack' do
    @p1 = session[:p1]
    @p2 = session[:p2]
    erb(:attack)
  end


end
