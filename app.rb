require 'sinatra/base'

class Battle < Sinatra::Base
  get '/Battle' do
    "Hello battle!"
  end

  run! if app_file == $0
end
