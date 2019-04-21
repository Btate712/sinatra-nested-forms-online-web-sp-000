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
      pirate.name = params[:pirates][:name]
      pirate.height = params[:pirates][:height]
      pirate.weight = params[:pirates][:weight]
      puts pirate.name
    end
  end
end
