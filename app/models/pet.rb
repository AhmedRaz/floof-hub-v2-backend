class Pet < ApplicationRecord
  include Filterable
  belongs_to :shelter
  belongs_to :user, optional: true

  has_many :pet_images

end
