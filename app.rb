require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'helpers/routes'
require_relative 'helpers/galleries'
require_relative 'helpers/html'


class Portfolio < Sinatra::Application
  include Routes
  include HTML
  include Galleries

  set :public_folder, 'public'
  set :views, 'views'

  get '/' do
    erb :index
  end

  get '/landscapes' do
    @images = LANDSCAPE_IMAGES
    erb :gallery
  end

  get '/nature' do
    @images = NATURE_IMAGES
    erb :gallery
  end

  get '/portraits' do
    @images = PORTRAIT_IMAGES
    erb :gallery
  end

  get '/bio' do
    erb :bio
  end

  get '/contact' do
    erb :contact
  end

  post '/contact' do
    redirect to CONTACT_ROUTE
  end
end