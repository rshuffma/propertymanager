class AddAmountUserIdAndLeaseIdToPayment < ActiveRecord::Migration
  def change
    add_column :payments, :user_id, :integer
    add_column :payments, :lease_id, :integer
    add_column :payments, :amount, :integer
  end
end
