require 'sinatra/base'
require_relative 'lib/player.rb'
require_relative 'lib/game.rb'
require 'pry'

class Battle < Sinatra::Base
enable :sessions

STARTING_HP = 70

  get '/' do
    erb :index
  end

  post '/names' do
    $game = Game.new(Player.new(params[:player_one_name]), Player.new(params[:player_two_name]) )
    redirect '/play'
  end

  get '/play' do
    $game.player_one
    $game.player_two
    erb :play
  end

  post '/confirm_hit' do
    $game.player_two.reduce_points
    erb :confirm_hit
  end

run! if app_file == $0

end
