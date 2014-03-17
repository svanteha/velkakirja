class Apartment < ActiveRecord::Base

  has_many :users, dependent: :destroy
  has_many :debts, through: :users

end
