class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :name, :null => false
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.string :website
      t.integer :membership, :default => 0
      t.string :notes
      t.integer :capacity
      t.integer :waitlist_capacity
      t.timestamps
    end
  end
end
