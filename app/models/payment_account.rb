class PaymentAccount < ApplicationRecord
  has_many :payments, dependent: :destroy

  validates :account_type, :name, :amount, presence: true
end
