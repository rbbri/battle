require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    $p1 = Player.new(params[:p1])
    $p2 = Player.new(params[:p2])
    redirect to('/play')
  end

  get '/play' do
    @p1 = $p1.name
    @p2 = $p2.name
    $game = Game.new
    erb(:play)
  end

  get '/attack' do
    @p1 = $p1
    @p2 = $p2
    $game.attack(@p2)
    erb(:attack)
  end
end
