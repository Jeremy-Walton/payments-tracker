class CreatePaymentAccounts < ActiveRecord::Migration[5.1]
  def change
    create_table :payment_accounts do |t|
      t.string :type
      t.string :name
      t.integer :amount
      t.integer :day
      t.integer :reminder

      t.timestamps
    end
  end
end
