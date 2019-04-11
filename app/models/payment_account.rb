class PaymentAccount < ApplicationRecord
  has_many :payments, dependent: :destroy

  validates :account_type, :name, :amount, presence: true

  def up_to_date?
    return payments.any? && payments.sort_by(&:date).last.date == Date.current.beginning_of_month ? 'Up to Date' : 'Payment Due'
  end
end
