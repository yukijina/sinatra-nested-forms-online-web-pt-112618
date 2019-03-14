require './environment'

module FormsLab
  class App < Sinatra::Base
    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do

      erb :new
    end

    post '/pirates' do
      @name = params[:pirate][:name]
      @weight = params[:pirate][:weight]
      @height = params[:pirate][:height]
      @ship_name = params[:pirate][:ships][:name]

      erb :show
    end


  end
end
