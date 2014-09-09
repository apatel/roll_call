class CreateClassRegistrations < ActiveRecord::Migration
  def change
    create_table :class_registrations do |t|
      t.references :class_item
      t.references :user
      t.date :classtime
      t.timestamps
    end
  end
end
