class ApplicationController < ActionController::Base
    helper_method :current_user
    def current_user
        if session[:secure_user_id]
            @current_user ||= User.find(session[:secure_user_id])
        else
            @current_user = nil
        end
    end
end
