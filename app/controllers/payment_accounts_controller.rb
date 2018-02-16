class PaymentAccountsController < ApplicationController

  def index
    @payment_accounts = PaymentAccount.all
  end

  def new
    @payment_account = PaymentAccount.new
  end

  def create
    @payment_account = PaymentAccount.new(payment_account_params)
    if @payment_account.save
      redirect_to payment_accounts_url
    else
      render :new
    end
  end

  private

  def payment_account_params
    params.require(:payment_account).permit(:account_type, :name, :amount)
  end
end
