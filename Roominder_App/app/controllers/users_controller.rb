class UsersController < ApplicationController
    def new
    end
    
    def create
        @room = Room.find(params[:room_id])
        @user = @room.users.create(user_params)!
    end

    private
        def user_params
            params.require(:user).permit(:name, :username)
        end
end
