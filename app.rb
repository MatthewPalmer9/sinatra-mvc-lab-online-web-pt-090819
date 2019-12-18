require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :user_input
  end

  post '/' do
    @piglatinizer = PigLatinizer.new.toPigLatin(params[:user_input].to_s)
    erb :result
  end
end
