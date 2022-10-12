class AddServiceProvidersToCustomer < ActiveRecord::Migration[7.0]
  def change
    add_reference :customers, :service_providers, null: false, foreign_key: true
  end
end
