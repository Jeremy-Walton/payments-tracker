class Payment < ApplicationRecord
  belongs_to :payment_account

  validates :amount, :date, presence: true
end
