require 'sinatra/base'

class Bookmarker < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }

  get '/links' do
    @links = Link.all
    erb :'links/index'
  end

  get '/links/new' do
    erb :new
  end

  post '/links' do
    link = Link.create(url: params[:url], title: params[:title])
    tag  = Tag.create(tag: params[:tags])
    link.tags << tag
    link.save
    p link.tags
    redirect to('/links')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
