class RoomsController < ApplicationController
    def show
        byebug
        redirect_to "/rooms/%s/secure_users/%s/tasks" % [current_user[:room_id], current_user[:id]]
    end

    def new
    end
    
    def create
    end
end
