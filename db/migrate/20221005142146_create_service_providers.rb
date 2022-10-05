class CreateServiceProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :service_providers do |t|
      t.string :name
      t.string :username
      t.string :password_digest
      t.string :email
      t.integer :age
      t.integer :phone_number
      t.string :location
      t.string :address
      t.string :skill_level
      t.boolean :availability

      t.timestamps
    end
  end
end
