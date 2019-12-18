require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/piglatinize' do
    @piglatinizer = PigLatinizer.new.toPigLatin(params[:user_phrase].to_s)
    erb :result
  end
end
