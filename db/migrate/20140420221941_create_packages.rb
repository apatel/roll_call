class CreatePackages < ActiveRecord::Migration
  def change
    create_table :packages do |t|
      t.string :name
      t.text :description
      t.decimal :price, precision: 15, scale: 2
      t.integer :expiration_in_days
      t.integer :class_limit
      t.timestamps
    end
  end
end
