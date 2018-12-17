class Location < ApplicationRecord
  has_many :shelters
  has_many :users
  has_many :pets, through: :shelters
end
