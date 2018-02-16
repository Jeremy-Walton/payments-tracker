class PaymentAccount < ApplicationRecord
  validates :account_type, :name, :amount, presence: true
end
