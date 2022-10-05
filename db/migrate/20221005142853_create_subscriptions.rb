class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.integer :card_number
      t.datetime :expiry_date

      t.timestamps
    end
  end
end
