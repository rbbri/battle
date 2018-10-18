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
    play
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    game_over if @game.game_over?
    erb(:play)
  end

  post '/attack' do
    @game.attack
    play
  end

  post '/heal' do
    @game.heal
    play
  end

  get '/game_over' do
    erb(:game_over)
  end

private

  def game_over
    redirect '/game_over'
  end

  def play
    redirect '/play'
  end
end
