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
      pirate = Pirate.new(name: params[:pirates][:name], height: params[:pirates][:height], weight: params[:pirates][:weight])
      puts pirate.name
    end
  end
end
