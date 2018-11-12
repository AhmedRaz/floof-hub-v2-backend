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
      t.integer :user_id, optional: true
      t.boolean :adoption_status, default: false
      t.string :image_source, array: true, default: []
      t.timestamps
    end
  end
end
