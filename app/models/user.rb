class User < ApplicationRecord
  #Filterable allows user to search for specific paramaters
  include Filterable

  has_secure_password

  has_many :pets
  belongs_to :location, optional: true

  validates  :name, {presence: true, length: {minimum: 2, maximum: 64}}
  validates  :password, {length: {minimum: 6}}
  validates  :email_address, {presence: true, length: {minimum: 6, maximum: 64}, uniqueness: true}

end
