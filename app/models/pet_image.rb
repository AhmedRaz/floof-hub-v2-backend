class PetImage < ApplicationRecord
  include Filterable
  belongs_to :pet

end 
