require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Battle < Sinatra::Base
  get '/' do
    erb(:index)
  end

  post '/names' do
    player_1 = Player.new(params[:p1])
    player_2 = Player.new(params[:p2])
    @game = Game.create(player_1, player_2)
    redirect to('/play')
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb(:play)
  end

  get '/attack' do
    @game.attack
    redirect '/game_over' if @game.game_over?
    erb(:attack)
  end

  get '/heal' do
    @game.heal
    erb(:heal)
  end

  get '/game_over' do
    erb(:game_over)
  end
end
