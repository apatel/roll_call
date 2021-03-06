class CreateIndividuals < ActiveRecord::Migration
  def change
    create_table :individuals do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 15, scale: 2
      t.integer :expiration_in_days
      t.integer :class_limit
      t.boolean :deactivate
      t.timestamps
    end
  end
end
