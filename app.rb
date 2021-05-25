require_relative 'config/environment'

class App < Sinatra::Base

    configure do
        enable :sessions
        set :session_secret, "puppies"
      end 

      get '/' do 
        erb :index
      end

      post '/checkout' do
        @item = params[:item]
        session[:item] = params[:item]
        erb :checkout
      end
end

