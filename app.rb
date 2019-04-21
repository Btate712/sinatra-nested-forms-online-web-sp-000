require './environment'

module FormsLab
  class App < Sinatra::Base

    # code other routes/actions here
    get '/' do
      erb :root
    end

    get '/new' do

      erb :'pirates/new'
    end

    post '/new' do
      pirate = Pirate.new
      pirate.name = params[:pirate][:name]
      pirate.height = params[:pirate][:height]
      pirate.weight = params[:pirate][:weight]
      binding.pry
    end
  end
end
