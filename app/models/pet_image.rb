class PetImage < ApplicationRecord
  include Filterable
  belongs_to :pet

  scope :pet, -> (pet_id) { where(pet_id: pet_id) }
  
end
