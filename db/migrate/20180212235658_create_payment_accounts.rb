class CreatePaymentAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_accounts do |t|
      t.string :account_type
      t.string :name
      t.decimal :amount
      t.integer :day
      t.integer :reminder

      t.timestamps
    end
  end
end
