class PaymentAccountsController < ApplicationController

  def index
    @payment_accounts = PaymentAccount.all
  end

  def new
    @payment_account = PaymentAccount.new
  end

  def edit
    @payment_account = PaymentAccount.find(params[:id])
  end

  def create
    @payment_account = PaymentAccount.new(payment_account_params)
    if @payment_account.save
      flash[:success] = 'Account Created'
      redirect_to payment_accounts_url
    else
      flash[:error] = 'Error: See below'
      render :new
    end
  end

  def update
    @payment_account = PaymentAccount.find(params[:id])

    if @payment_account.update(payment_account_params)
      flash[:success] = 'Updated'
      redirect_to edit_payment_account_url(@payment_account)
    else
      flash[:error] = 'Error: See below'
      render :edit
    end
  end

  def destroy
    @payment_account = PaymentAccount.find(params[:id])

    if @payment_account.destroy
      flash[:success] = 'Account deleted'
      redirect_to payment_accounts_path
    else
      flash[:success] = 'Account could not be deleted'
      render :edit
    end
  end

  private

  def payment_account_params
    params.require(:payment_account).permit(:account_type, :name, :amount)
  end
end
