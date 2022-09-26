class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :email, null: false
      t.integer :age
      t.integer :phone_number
      t.string :location
      t.string :address
      t.string :car_model

      t.timestamps
    end
  end
end
