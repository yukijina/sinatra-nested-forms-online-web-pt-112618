require './environment'

module FormsLab
  class App < Sinatra::Base
    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do

      erb :"pirates/new"
    end

    post '/pirates' do
      @name = params[:pirate][:name]
      @weight = params[:pirate][:weight]
      @height = params[:pirate][:height]
      @ships = params[:pirate][:ships]
      Pirate.new(@name, @weight, @height)
    
      erb :"pirates/show"
    end
    
  end
end
