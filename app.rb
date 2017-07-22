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
    player_one = Player.new(params[:player_one_name])
    player_two = Player.new(params[:player_two_name])
    $game = Game.new(player_one, player_two)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/confirm_hit' do
    @game = $game
    @game.attack(@game.opponent_of(@game.current_turn))
    @game.switch_turns
    erb :confirm_hit
  end

run! if app_file == $0

end
