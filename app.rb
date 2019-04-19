require 'sinatra/base'
require './helpers/attack_helper'
require './lib/game'
require './lib/player'
require './lib/computer_player'
require './lib/attack'

class Battle < Sinatra::Base
  enable :sessions
  helpers AttackHelper

  before do
  @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    if params[:player_2_name].empty?
      player_2 = ComputerPlayer.new
    else
      player_2 = Player.new(params[:player_2_name])
    end
    @game = Game.create(player_1, player_2)
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/attack' do
    attack_and_redirect(@game)
  end

  get '/attack' do
    erb :attack
  end

  post '/switch-turns' do
    @game.switch_turns
    if @game.current_turn.computer?
      attack_and_redirect(@game)
    else
      redirect '/play'
    end
  end

  get '/game-over' do
    @game
    erb :game_over
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
