class Shelter < ApplicationRecord
  include Filterable
  has_many :pets

  belongs_to :location, optional: true
  

end
