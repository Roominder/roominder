class SignUpController < ApplicationController
  def index
  end

  def create_room
  end

  def new
    @room = Room.new :name => params[:name]
    @invite_code = generate_code(6)
    @room.code = @invite_code
    @room.save!
    redirect_to signup_path(:room_id => @room.id)
    # TODO: redirect to user creation view
  end

  private
    def generate_code(size)
      charset = Array('A'..'Z') + Array('a'..'z')
      Array.new(size) { charset.sample }.join
    end
end
