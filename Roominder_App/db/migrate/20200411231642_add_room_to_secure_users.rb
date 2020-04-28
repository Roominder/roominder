class AddRoomToSecureUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :secure_users, :room, foreign_key: true
  end
end
