class User < ActiveRecord::Base

  belongs_to :apartment
  has_many :debts, dependent: :destroy

end
