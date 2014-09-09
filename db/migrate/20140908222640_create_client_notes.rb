class CreateClientNotes < ActiveRecord::Migration
  def change
    create_table :client_notes do |t|
      t.text :note
      t.references :client
      t.references :user
      t.timestamps
    end
  end
end
