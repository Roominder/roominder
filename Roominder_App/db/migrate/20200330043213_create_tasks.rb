class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :taskName
      t.string :assignedTo
      t.string :dueDate
      t.string :collateral
      t.string :frequency

      t.timestamps
    end
  end
end
