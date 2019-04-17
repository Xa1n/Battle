require 'sinatra/base'

class Battle < Sinatra::Base
  get "/" do
    "Testing infrastructure working!"
  end

  get "/Battle" do
    "Hello battle!"
  end

  run! if app_file == $0
end
