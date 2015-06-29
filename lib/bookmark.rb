require 'sinatra/base'

class Bookmarker < Sinatra::Base
  get '/' do
    'Hello Bookmarker!'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
