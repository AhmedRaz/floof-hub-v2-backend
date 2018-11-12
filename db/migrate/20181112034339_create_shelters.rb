class CreateShelters < ActiveRecord::Migration[5.2]
  def change
    create_table :shelters do |t|
      t.string :name
      t.integer :location_id
      t.string :telephone_number
      t.string :email_address
      t.text :description
      t.string :website
      t.timestamps
    end
  end
end
