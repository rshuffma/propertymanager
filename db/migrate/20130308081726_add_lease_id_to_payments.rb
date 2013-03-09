class AddLeaseIdToPayments < ActiveRecord::Migration
  def change
    add_column :payments, :lease_id, :integer
  end
end
