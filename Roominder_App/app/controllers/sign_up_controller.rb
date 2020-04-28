class SignUpController < ApplicationController
  def index
  end

  def create_room
  end

  def new_room
    @room = Room.new :name => params[:name]
    @invite_code = generate_code(6)
    @room.code = @invite_code
    @room.save!
    redirect_to signup_path(:room_id => @room.id)
  end

  def assign_room
    @room = Room.find_by_code(params[:code])
    # TODO: alert user of invalid invite code
    redirect_to signup_path(:room_id => @room.id)
  end

  def join_room
  end

  private
  # generates a random 6 character room code.
  # NOTE: code is not guaranteed to be unique
    def generate_code(size)
      charset = Array('A'..'Z') + Array('a'..'z')
      Array.new(size) { charset.sample }.join
    end
end
