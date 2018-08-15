class PaymentsController < ApplicationController

  def new
    @payment_account = PaymentAccount.find(params[:payment_account_id])
    @payment = @payment_account.payments.new
  end

  def create
    @payment_account = PaymentAccount.find(params[:payment_account_id])
    @payment = @payment_account.payments.build(payment_params)
    if @payment.save
      flash[:success] = 'Payment Logged'
      redirect_to payment_accounts_url
    else
      flash[:error] = 'Error: See below'
      render :new
    end
  end

  private

  def payment_params
    params.require(:payment).permit(:amount, :date)
  end
end
