class CreatePets < ActiveRecord::Migration[5.2]
  def change
    create_table :pets do |t|
      t.string :name
      t.string :type
      t.string :breed
      t.integer :age
      t.string :gender
      t.string :temperament
      t.text :bio
      t.boolean :single_pet
      t.boolean :family_friendly
      t.integer :shelter_id
      t.integer :user_id
      t.boolean :adoption_status, default: false
      t.timestamps
    end
  end
end
