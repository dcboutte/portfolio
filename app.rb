require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'helpers/routes'
require_relative 'helpers/galleries'
require_relative 'helpers/html'
require_relative 'helpers/mailer'

# Each request creates a new instance of this class.
# Modules found in ./helpers
class Portfolio < Sinatra::Application
  include Routes
  include HTML
  include Galleries
  include Mailer

  set :public_folder, 'public'
  set :views, 'views'

  get ROOT_ROUTE do
    erb :index
  end

  get LANDSCAPE_ROUTE do
    @images = LANDSCAPE_IMAGES
    erb :gallery
  end

  get NATURE_ROUTE do
    @images = NATURE_IMAGES
    erb :gallery
  end

  get PORTRAIT_ROUTE do
    @images = PORTRAIT_IMAGES
    erb :gallery
  end

  get BIO_ROUTE do
    erb :bio
  end

  get CONTACT_ROUTE do
    erb :contact
  end

  post CONTACT_ROUTE do
    send_message params[:from], params[:body]
    redirect to CONTACT_ROUTE
  end
end
