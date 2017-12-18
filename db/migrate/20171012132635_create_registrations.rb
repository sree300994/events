class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
      t.string :name
      t.integer :no_of_tickets
      t.float :total

      t.timestamps null: false
    end
  end
end
