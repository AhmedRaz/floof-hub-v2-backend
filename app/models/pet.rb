class Pet < ApplicationRecord
  include Filterable
  belongs_to :shelter
  belongs_to :user, optional: true
end
