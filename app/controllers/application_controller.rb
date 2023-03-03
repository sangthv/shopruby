class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    include SessionHelper

    def require_login
      unless logged_in?
        redirect_to login_path
      end
    end
end
