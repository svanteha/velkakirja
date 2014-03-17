class User < ActiveRecord::Base
  include DebtsTotalSum

  belongs_to :apartment
  has_many :debts, dependent: :destroy

  def count_debts
    debts.sum_value :amount
  end

end
