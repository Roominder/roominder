class AddSecureUsersToTasks < ActiveRecord::Migration[5.2]
  def change
    add_reference :tasks, :secure_user, foreign_key: true
  end
end
