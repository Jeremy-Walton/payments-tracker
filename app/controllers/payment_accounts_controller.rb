class PaymentAccountsController < ApplicationController

  def index
    @payment_accounts = PaymentAccount.all
  end
end
