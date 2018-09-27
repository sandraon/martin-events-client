class CreateCustomerEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :customer_events do |t|
      t.integer :customer_id
      t.integer :event_id
      t.integer :payment_id

      t.timestamps
    end
  end
end
