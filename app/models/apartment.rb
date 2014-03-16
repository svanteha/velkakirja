class Apartment < ActiveRecord::Base
  has_many :users
end
