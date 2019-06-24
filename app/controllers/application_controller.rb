require './config/environment'

class ApplicationController < Sinatra::Base
  configure do
    enable :sessions
    set :session_secret, 'super_secret_token'
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  helpers do
    def is_logged_in?
      !session[:id].nil?
    end

    def current_user
      if is_logged_in?
        User.find(session[:id])
      else
        nil
      end
    end
  end
end
