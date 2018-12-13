class User < ApplicationRecord
  #Filterable allows user to search for specific paramaters
  include Filterable
  has_secure_password

  has_many :pets

end
