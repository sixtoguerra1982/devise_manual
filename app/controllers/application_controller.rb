class ApplicationController < ActionController::Base
    

    helper_method :current_user

    protected

    def current_user
        @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
    # https://stackoverflow.com/questions/995593/what-does-or-equals-mean-in-ruby

end
