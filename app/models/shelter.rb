class Shelter < ApplicationRecord
  include Filterable
  has_many :pets

  belongs_to :location, optional: true

  scope :location, -> (location_id) { where(location_id: location_id) }
  scope :starts_with, -> (name) { where("name like ?", "#{name}%")}


end
