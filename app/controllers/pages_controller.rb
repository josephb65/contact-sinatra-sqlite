class PagesController < ApplicationController
  use Rack::Flash

  get '/' do
    erb :'pages/index'
  end
end
