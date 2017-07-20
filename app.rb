require 'sinatra/base'
require_relative 'lib/player.rb'

class Battle < Sinatra::Base
enable :sessions

STARTING_HP = 70

  get '/' do
    erb :index
  end

  post '/names' do
    $player_one = Player.new(params[:player_one_name])
    $player_two = Player.new(params[:player_two_name])
    redirect '/play'
  end

  get '/play' do
    $player_one
    $player_two
    erb :play
  end

run! if app_file == $0

end
