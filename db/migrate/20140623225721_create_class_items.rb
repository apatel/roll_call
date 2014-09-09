class CreateClassItems < ActiveRecord::Migration
  def change
    create_table :class_items do |t|
      t.references :class_type, :null => false
      t.references :location
      t.time :classtime, :null => false
      t.string :classday, :null => false
      t.references :instructor
      t.boolean :deactivate
      t.timestamps
    end
  end
end
