class AddSubscriptionToCustomer < ActiveRecord::Migration[7.0]
  def change
    add_reference :customers, :subscription, null: false, foreign_key: true
  end
end
