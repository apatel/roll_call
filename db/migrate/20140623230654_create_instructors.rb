class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name, :null => false
      t.string :address1
      t.string :address2
      t.string :city
      t.string :state
      t.string :zip
      t.string :phone
      t.string :email
      t.text :private_notes
      t.text :public_notes
      t.timestamps
    end
  end
end
