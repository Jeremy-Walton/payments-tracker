class PaymentsController < ApplicationController

  def new
    @payment_account = PaymentAccount.find(params[:payment_account_id])
    @payment = @payment_account.payments.new
  end

  def edit
    @payment = Payment.find(params[:id])
    @payment_account = @payment.payment_account
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

  def update
    @payment = Payment.find(params[:id])

    if @payment.update(payment_params)
      flash[:success] = 'Updated'
      redirect_to edit_payment_account_url(@payment.payment_account)
    else
      flash[:error] = 'Error: See below'
      render :edit
    end
  end

  private

  def payment_params
    params.require(:payment).permit(:amount, :date)
  end
end
