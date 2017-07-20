require 'sinatra/base'
require_relative 'player'

class Battle < Sinatra::Base
enable :sessions

STARTING_HP = 70

  get '/' do
    erb :index
  end

  post '/names' do
    $player_one = Player.new(params[:player_one_name])
    $player_two = Player.new(params[:player_two_name])
    redirect to('/play')
  end

  get '/play' do
    $player_one
    $player_two
    @player_two_hp = STARTING_HP

    erb :play
  end

run! if app_file == $0

end
