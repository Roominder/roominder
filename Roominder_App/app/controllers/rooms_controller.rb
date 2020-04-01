class RoomsController < ApplicationController
    def index
        # TODO: Hash passwords, instead of storing them in plain text
        @user = User.find_by(username: params[:username], password: params[:password])
        if @user != nil
            redirect_to "/rooms/%s/users/%s/tasks" % [@user.room_id, @user.id]
        else
            # Indicates that the user was not found with given credentials
            # We can redirect to a try again page here if we like
            redirect_to "/"
        end
    end

    def new
    end
    
    def create
    end
end
