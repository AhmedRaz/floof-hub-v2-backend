class Pet < ApplicationRecord
  include Filterable
  belongs_to :shelter
  belongs_to :user, optional: true

  has_many :pet_images

  scope :shelter, -> (shelter_id) { where(shelter_id: shelter_id) }
  scope :user, -> (user_id) { where(user_id: user_id) }
  scope :starts_with, -> (name) { where("name like ?", "#{name}%")}
  scope :type, -> (type) { where(type: type) }
  scope :breed, -> (breed) { where(breed: breed) }
end
